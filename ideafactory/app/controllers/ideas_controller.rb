class IdeasController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  http_basic_authenticate_with name: "leah", password: "secret", except: [:index, :show]

  def index
    @ideas = Idea.all
  end

  def idea
    @idea = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def create
    @idea = Idea.new(idea_params)

   if @idea.save
     redirect_to @idea
   else
     render 'new'
   end

  end

  def show
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])

     if @idea.update(idea_params)
       redirect_to @idea
     else
       render 'edit'
     end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to ideas_path
  end


private

  def idea_params
    params.require(:idea).permit(:title, :text)
  end



end
