class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @question      = Question.find params[:question_id]
    @like          = Like.new
    @like.user     = current_user
    @like.question = @question
    if @like.save
      redirect_to question_path(@question), notice: "liked"
    else
      redirect_to question_path(@question), alert: "Can't like"
    end
  end

  def destroy
    @question = Question.find params[:question_id]

    # this will be insecure because anyone can remove someone else's like
    # @like     = Like.find params[:id]

    # @like   = current_user.likes.find(params[:id])
    @like     = @question.like_for(current_user)
    @like.destroy
    redirect_to question_path(@question), notice: "Un-Liked"
  end

end
