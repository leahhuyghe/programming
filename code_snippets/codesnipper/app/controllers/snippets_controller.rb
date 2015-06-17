class SnippetsController < ApplicationController
  before_action :find_snippet, except: [:index, :new, :create]
  def index
    #@snippets = Snippet.all
    if (params[:search] && params[:category_id])
      @snippets = Snippet.search(params[:search],params[:category_id])
    else
      @snippets = Snippet.all.page(params[:page])
    end
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to snippet_path(@snippet)
    else
      render :new
    end
    
  end

  def edit

  end

  def show

  end

  def update
    if @snippet.update(snippet_params) 
      redirect_to snippet_path(@snippet)
    else
      render :edit
    end
  end

  def destroy
    @snippet.destroy
    redirect_to snippets_path
  end

  private

  def snippet_params
       params.require(:snippet).permit([:title, :code, :category_id])
  end

  def find_snippet
    @snippet = Snippet.find params[:id]
  end

end
