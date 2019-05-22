class IngredientsController < ApplicationController
  def create
    @inredient = ingredient.new(ingredient_params)
    if @ingredients.save
      redirect_to cocktail_path(@ingredient)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:ingredient).permit(:name, :cocktail, :dose)
  end
end

