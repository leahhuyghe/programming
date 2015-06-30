class LikesController < ApplicationController

  def create
      @article      = Article.find params[:article_id]
      @like          = Like.new
      @like.user     = current_user
      @like.article = @article
      if @like.save
        redirect_to article_path(@article), notice: "liked"
      else
        redirect_to article_path(@article), alert: "Can't like"
      end
    end

    def destroy
      @article = Article.find params[:article_id]
      @like     = @article.like_for(current_user)
      @like.destroy
      redirect_to article_path(@article), notice: "Un-Liked"
    end

end
