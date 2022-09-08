class MealsController < ApplicationController
  before_action :set_meal, only: %i[show edit update destroy]

  def index
    # authorize @meals
    if params[:query].present?
      @meals = policy_scope(Meal).search(params[:query])
    else
      @meals = policy_scope(Meal)
    end

    @markers = @meals.geocoded.map do |meal|
      {
        lat: meal.latitude,
        lng: meal.longitude,
        info_window: render_to_string(partial: "info_window", locals: {meal: meal}),
        image_url: helpers.asset_url("breademoji.png")
      }
    end
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def show
    authorize @meal
    @meal = Meal.find(params[:id])
    @order = Order.new
    @order.user = current_user
    @order.meal = @meal
    @available_portions = @meal.portions - @meal.orders.count

    @markers = [{
        lat: @meal.latitude,
        lng: @meal.longitude,
        info_window: render_to_string(partial: "info_window", locals: {meal: @meal}),
        image_url: helpers.asset_url("breademoji.png")
      }]
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    authorize @meal
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @meal
  end

  def update
    authorize @meal
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    authorize @meal
    @meal.destroy
    redirect_to meals_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :diet, :category, :cuisine, :details, :portions,
                                 :allergens, :price, :expiry, :reservation_min, :address, photos: [])
  end


  # def order_params
  #   params.require(:order).permit()
  # end
end
