class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @meals_offered = @user.meals
    @ordered_meals = @user.orders.map{ |order| order.meal }
  end
end
