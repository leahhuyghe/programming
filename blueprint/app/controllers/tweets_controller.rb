class TweetsController < ApplicationController

  def index
    @current_time = DateTime.now
    @authors_names = ['Brent']
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end


end
