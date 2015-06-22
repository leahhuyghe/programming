class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    @idea = Idea.find params[:idea_id]
    @like = Like.new
    @like.user = current_user
    @like.idea = @idea

    if @like.save
      redirect_to idea_path(@idea), notice: "Liked!"
    else
      redirect_to idea_path(@idea), alert: "Can't like dis!"
    end
  end

def destroy
  @idea = Idea.find params[:idea_id]
  @like = @idea.like_for(current_user)
  @like.destroy
  redirect_to idea_path(@idea), notice: "You don't like this anymore"
end







end
