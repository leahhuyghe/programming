class FavouritesController < ApplicationController


def create
  article = Article.find params[:article_id]
  favourite = current_user.favourites.new
  favourite.article = article

  if favourite.save
    redirect_to article, notice: "Article favourited"
  else
    redirect_to article, notice: "Can't favourite"
  end
end

def destroy
  article = Article.find params[:article_id]
  favourite = current_user.favourites.find params[:id]
  favourite.destroy
  redirect_to article, notice: "Unfavourited"
end



end
