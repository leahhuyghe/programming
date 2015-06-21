class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    article = Article.find params[:article_id]
    vote    = current_user.votes.new(vote_params)
    vote.article = article
    if vote.save
      redirect_to article, notice: "Voted!"
    else
      redirect_to article, notice: "No vote for you!"
    end

  end

  def update
    article = Article.find params[:article_id]
    vote    = current_user.votes.find params[:id]

    if vote.update(vote_params)
      redirect_to article, notice: "Vote updated!"
    else
      redirect_to article, alert: "Something went wrong. You can't vote."
    end

  end

  def destroy
    article = Article.find params[:article_id]
    vote = current_user.votes.find params[:id]
    vote.destroy
    redirect_to article, notice: "Your vote was cancelled"
  end

  private

  def vote_params
    params.require(:vote).permit(:is_up)
  end



end
