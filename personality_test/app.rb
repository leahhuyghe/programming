require "sinatra"

get "/" do
  erb :questions, layout: :application
end


post "/results" do
  @question 1 = params[:question_1]
  @question 2 = params[:question_2]
  @question 3 = params[:question_3]


  if @question_1 == "with_deadlines" && @question_2 == "rational" && @question_3 == "ideas"
    @result = "Rational"
  elsif @question_1 == "with_deadlines" && @question_2 == "rational" && @question_3 == "facts"
    @result == "Guardian"
  elsif @question_1 == "without_deadlines" && @question_2 == "rational" && @question_3 == "ideas"
    @result = "Guardian"
  end
 #to be continued!


  erb :results, layout :application

  params.to_s
end
