class SubscribeController < ApplicationController
  def index
    @name = "abc"
  end

  def create
    @name  = params[:name]
    @email = params[:email]
  end
end
