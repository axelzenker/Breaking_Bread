class ReviewsController < ApplicationController
  before_action :find_order

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.order_id = @order_id

    if @review.save
      redirect_to user_path(@review)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_order
    @order = Order.find(params[:order_id])
  end
end
