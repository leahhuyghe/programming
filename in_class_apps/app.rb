require "sinatra"
require "pony"
require "faker"

enable :sessions



# --sinatra authentication script---

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# -------------

get "/" do
  erb :calculator, layout: :application
end

get "/" do
  erb :convert, layout: :application
end

get "/" do
  erb :questions, layout: :application
end

get "/" do
  erb :contact, layout: :application
end

get "/" do
  erb :phrase, layout: :application

end
#-----------temperature converter -----------

post "/results" do
  @old_temperature = params[:old_temperature]
  @new_temperature = @old_temperature.to_i * 1.8 + 32
  @new_temperature.to_s
end

#-----------personality test -----------

post "/results" do
  @question_1 = params[:question_1]
  @question_2 = params[:question_2]
  @question_3 = params[:question_3]


  if @question_1 == "with_deadlines" && @question_2 == "rational" && @question_3 == "ideas"
    @result = "Rational"
  elsif @question_1 == "with_deadlines" && @question_2 == "rational" && @question_3 == "facts"
    @result == "Guardian"
  elsif @question_1 == "without_deadlines" && @question_2 == "rational" && @question_3 == "ideas"
    @result = "Guardian"
  end

  erb :results, layout: :application
  params.to_s
end

post "/convert" do
  @temp = params[:temperature].to_f
  @result = @temp * 9 / 5 +32
  session[:last_temperature] = @temp

end

# ----------- calculator -----------

post "/calculator" do
  @addition_answer = params[:@addition_answer]
  @subtraction_answer = params[:@subtraction_answer]
  @multiplication_answer = params[:@multiplication_answer]
  @division_answer = params[:@division_answer]

  @addition_answer = @add_first_number + @add_second_number
  @subtraction_answer = @subtract_first_number - @subtract_second_number
  @multiplication_answer = @multiply_first_number * @multiply_second_number
  @division_answer = @divide_first_number / @divide_second_number

  @addition_answer.to_f
  @subtraction_answer.to_f
  @multiplication_answer.to_f
  @division_answer.to_f

  if @divide_second_number.to_f == 0
    @division_answer = "Error, divide by 0"
  end
  erb :calculator, layout: :application
end

  # --------- random number picker -------

  post "/random" do
    @random_input = params[:random_input]
    @random_input.shuffle.first
    erb :random, layout: :application

  end

  # ----------- company catch phrase generator -----------

  post "/phrase" do
    erb :phrase, layout: :application
    @phrase = params[:phrase]
    @result = Faker::Company.catch_phrase
    erb :company_name, layout: :application
  end


  post "/" do
    session[:visits] ||= 0
    sessions[:visits] +=1
  end

  post "/color" do
    session[:background_color] = params[:new_color]
    redirect back  
  end
