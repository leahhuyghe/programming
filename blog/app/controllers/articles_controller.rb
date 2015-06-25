class ArticlesController < ApplicationController

  before_action :find_article, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, except: [:index, :show]

  # I haven't added these defs in order.

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @vote = @article.vote_for(current_user)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
     # Check if article is saved
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
  end

  # Allow user to update articles
  def update
   @article = Article.find(params[:id])

   if @article.update(article_params)
     redirect_to @article
   else
     render 'edit'
   end
  end

  #Allow user to delete articles
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  private

  # Prevent users from accessing this method
  def article_params
    params.require(:article).permit(:title, :image, :text, {tag_ids: []})

  end

  def find_article
    @article = Article.find(params[:id])
  end



end
