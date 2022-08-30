class MealsController < ApplicationController
  def index
    if params[:query].present?
      @meals = Meal.search(params[:query])
    else
      @meals = Meal.all
    end
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path, status: :see_other
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :diet, :category, :cuisine, :details, :portions,
                                 :allergens, :price, :expiry, :reservation_min)
  end
end
