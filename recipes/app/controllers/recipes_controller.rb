class RecipesController < ApplicationController

  def index

    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe_params = params.require(:recipe).permit(:name, :description)
    @recipe = Recipe.new recipe_params
      if @recipe.save
        redirect_to recipe_path(@recipe)
      else
        render :new
      end
  end

  def show
    @ingredient = Ingredient.new
    @recipe = Recipe.find params[:id]
  end

end
