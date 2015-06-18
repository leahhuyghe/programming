class WelcomeController < ApplicationController

  # to define an action in the controller we simply define an instance method
  # inside this controller class
  # make sure there is only one render or redirect per action
  def index
    @categories = Category.all

    # This will simply render text to the screen with no HTML
    # render text: "Welcome to My Rails app"

    # this will render a template (in this case an ERB template). Rails will look
    # for a file names index.html.erb inside view/welcome folder
    # render(:index, {layout: "application"})
    # render :index, layout: "application"
    # the line above is redundant because by default Rails will render a template
    # that matches the action name with proper format and templating language

    # this will render a template views/welcome/hello.html.erb within layout
    # views/layouts/alternative.html.erb. This will override the default
    # convention which is rendering views/welcome/index.html.erb within layout
    # views/layouts/application.html.erb
    # render :hello, layout: "alternative"
  end


  def hello
    # anything that comes after the ? in a URL is considered a parameter and
    # not part of the URL. For instance if the URL is:
    # http://localhost:3000/hello?name=tam&city=burnaby
    # then we will have a params hash that looks like:
    # params = {"name" => "tam", "city" => "burnaby"}
    @name = params[:name]
    @city = params[:city]
    # this will render views/welcome/hello.html.erb
  end

  def tester
    render text: params
  end

end
