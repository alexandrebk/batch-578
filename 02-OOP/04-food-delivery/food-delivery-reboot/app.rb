require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/customers_controller"
require_relative "app/controllers/sessions_controller"
require_relative "router"

csv_file_path_meal = File.join(__dir__,"data/meals.csv")
csv_file_path_customer = File.join(__dir__,"data/customers.csv")
meal_repository = MealRepository.new(csv_file_path_meal)
customer_repository = CustomerRepository.new(csv_file_path_customer)

# 1. I can list meals

meals_controller = MealsController.new(meal_repository)
customers_controller = CustomersController.new(customer_repository)
sessions_controller = SessionsController.new()
router = Router.new(meals_controller, customers_controller, sessions_controller)
router.run


# meals_controller.list
# # => on veut la list des meals

# meals_controller.add
# # => ajouter et persister un nouveau meal