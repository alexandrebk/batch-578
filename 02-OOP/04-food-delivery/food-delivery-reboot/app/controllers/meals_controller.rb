require_relative "../views/meal_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    # TODO
    @meal_repository = meal_repository
    @meal_view = MealView.new
  end

  def list
    # 1. on doit récupérer les meals
    meals = @meal_repository.all
    # 2. on doit display les meals
    @meal_view.display(meals)
  end

  def add
    # 1. on doit demander un name
    name = @meal_view.ask_for("name")
    # 2. on demande un price au user
    price = @meal_view.ask_for("price")
    # 3. on crée une instance de meal
    meal  = Meal.new(name: name, price: price)
    # 4. on persist le meal
    @meal_repository.create(meal)
  end
end
