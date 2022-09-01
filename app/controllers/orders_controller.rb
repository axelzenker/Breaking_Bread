class OrdersController < ApplicationController
  before_action :set_meal, only: [:create]
  def new
    @order = Order.new
  end

  def create
    authorize @meal
    @order = Order.new
    @order.user = current_user
    @order.meal = @meal
    if @order.save
      # redirect_to meal_path(@order.meal)
      head :ok
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to meals_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
