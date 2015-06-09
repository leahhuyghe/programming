  class AnswersController < ApplicationController
  def create
    @question          = Question.find params[:question_id]
    answer_params      = params.require(:answer).permit(:body)
    @answer            = Answer.new answer_params
    @answer.question   = @question

    if @answer.save
      redirect_to question_path(@question), notice: "Answer created"
    else
      # We use the full path because if we do render :show it will look for a
      # template called show.html.erb within the /app/views/answers folder.
      render "/questions/show"
    end
  end
end
