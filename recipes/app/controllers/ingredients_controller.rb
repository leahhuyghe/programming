class IngredientsController < ApplicationController

  def create
    @recipe             = Recipe.find params[:recipe_id]
    ingredient_params   = params.require(:ingredient).permit(:name, :quantity)
    @ingredient         = Ingredient.new
    @ingredient.recipe  = @recipe
    if @ingredient.save
    #  redirect_to recipe_path(@recipe) ...this is long for:
    redirect_to @recipe
    else
      render "/recipes/show"
    end

  end


  def destroy
      recipe = Recipe.find params[:recipe_id]
      ingredient = Ingredient.find params[:id]
      ingredient.destroy
      redirect_to recipe
  end

end
