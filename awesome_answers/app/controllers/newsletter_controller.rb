class NewsletterController < ApplicationController

  def index
  end

  def submit
    @email = params[:email]
  end

  def submit
    @name = params[:name]
  end

end
