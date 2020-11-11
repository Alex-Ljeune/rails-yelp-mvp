class ReviewsController < ApplicationController


  def index

  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    # raise
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_review
  end

  def params_review
    params.require(:review).permit(:content, :rating)
  end

end
