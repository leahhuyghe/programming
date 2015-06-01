class WelcomeController < ApplicationController

  #to define an action in the controller, we simply define an instance method inside this controller class.

  #make sure there is only one render or redirect per action.
  def index #this is the action.

    #this will render a template (in this case an ERB template)
    # Rails will look for a file named index.html.erb inside the view/welcome folder.
    #render :index, layout: "application" is shorthand for the following:
    #render({:index, layout: "application" })
    #the line above is redundant because by default Rails will render a template that matches the action name with proper format and templating language.
    render :index, layout: "application"

  end

  def hello
    # this will render views/welcome/hello.html.erb
    render :hello, layout: "application"
    #anything that comes after the question mark "?" in a URL is considered a parameter and not part of the URL. For instance if the URL is
    @name = params[:name]
    @city = params[:city]
  end




end
