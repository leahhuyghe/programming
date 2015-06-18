class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_answer, only: [:destroy]
  before_action :authorize, only: [:destroy]

  def create
    @question        = Question.find params[:question_id]
    answer_params    = params.require(:answer).permit(:body)
    @answer          = Answer.new answer_params
    # associating the @answer with @question by assigning the question property
    # which came from the `blongs_to` method to @question
    # You can also do:
    # @answer.question_id = @question.id
    # although the method below is preferred:
    @answer.question = @question
    @answer.user     = current_user
    if @answer.save
      redirect_to question_path(@question), notice: "answer created"
    else
      # we use the full path because if we do render :show it will look for
      # a template called show.html.erb within the /app/views/answers folder
      render "/questions/show"
    end
  end

  def destroy
    question = Question.find params[:question_id]
    # answer   = Answer.find params[:id]
    @answer.destroy
    redirect_to question_path(question), notice: "answer deleted"
  end

  private

  def find_answer
    @answer = Answer.find params[:id]
  end

  def authorize
    # we only allow the answer owner or the answer question's owner to delete
    # the answer
    unless can? :manage, @answer
      redirect_to root_path, alert: "Access denied"
    end
  end

end
