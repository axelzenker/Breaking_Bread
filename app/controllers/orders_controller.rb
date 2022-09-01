class OrdersController < ApplicationController
  before_action :set_meal, only: [:create]
  def new
    @order = Order.new
  end

  def chatroom
    @order = Order.find(params[:id])
    @message = Message.new
    authorize @order
    @customer = @order.user
    @chef = @order.meal.user
  end

  def create
    @order = Order.new
    @order.user = current_user
    @order.meal = @meal
    authorize @order
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
