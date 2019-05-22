class ReviewsController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render "review/new"
    end

  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

