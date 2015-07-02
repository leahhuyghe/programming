class MessagesController < ApplicationController

  def index
    render json: Message.all
  end

  # we want to get POST/messages here.
  def create
    Message.create!(body: params[:body])
     head status: 201
    #render nothing: true, status: 201
    head :created
  end


end
