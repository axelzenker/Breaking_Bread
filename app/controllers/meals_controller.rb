class MealsController < ApplicationController
  def index
    # authorize @meals
    if params[:query].present?
      @meals = policy_scope(Meal).search(params[:query])
    else
      @meals = policy_scope(Meal)
    end
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def show
    @meal = Meal.find(params[:id])
    authorize @meal
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
    @meal = Meal.find(params[:id])
  end

  def update
    authorize @meal
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    authorize @meal
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
