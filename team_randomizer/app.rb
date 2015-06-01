require "sinatra"

get "/" do
  erb :randomizer, layout: :application

end

post "/randomizer" do
  @names = params[:student_names]
  @names.split(, )

  names = []
  erb layout: :application

end
