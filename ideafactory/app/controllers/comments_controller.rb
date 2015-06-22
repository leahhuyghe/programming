class CommentsController < ApplicationController

  http_basic_authenticate_with name: "leah", password: "secret", except: [:index, :show]

  def create
   @idea = Idea.find(params[:idea_id])
   @comment = @idea.comments.create(comment_params)
   redirect_to idea_path(@idea)
 end

 def destroy
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.find(params[:id])
    @comment.destroy
    redirect_to idea_path(@idea)
  end

 private

   def comment_params
     params.require(:comment).permit(:commenter, :body)
   end


end
