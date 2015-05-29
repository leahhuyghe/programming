require "sinatra"

# F = C * 9/5 + 32

get "/" do
  erb :convert, layout: :application

end

post "/results" do
  @old_temperature = params[:old_temperature]
  @new_temperature = @old_temperature.to_i * 1.8 + 32
  @new_temperature.to_s
end
