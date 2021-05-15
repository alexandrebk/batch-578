require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    # TODO
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def list
    # 1. on doit récupérer les meals
    meals = @meal_repository.all
    # 2. on doit display les meals
    @meals_view.display(meals)
  end

  def add
    # 1. on doit demander un name
    name = @meals_view.ask_for("name")
    # 2. on demande un price au user
    price = @meals_view.ask_for("price")
    # 3. on crée une instance de meal
    meal  = Meal.new(name: name, price: price)
    # 4. on persist le meal
    @meal_repository.create(meal)
  end
end
