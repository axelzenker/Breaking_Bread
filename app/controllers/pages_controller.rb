class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @meals_offered = @user.meals
    @unique_meals = current_user.orders.map{|order| order.meal }.uniq
    @reversed_user_orders = current_user.orders.reverse

  end

end
