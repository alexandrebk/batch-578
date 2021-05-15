require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative "app/repositories/customer_repository"
require_relative "app/repositories/order_repository"
require_relative "app/controllers/customers_controller"
require_relative "app/repositories/employee_repository"
require_relative "app/controllers/sessions_controller"
require_relative "app/controllers/orders_controller"
require_relative "router"
require_relative "app/models/order"

csv_file_path_meal = File.join(__dir__,"data/meals.csv")
csv_file_path_customer = File.join(__dir__,"data/customers.csv")
csv_file_path_employee = File.join(__dir__,"data/employees.csv")
csv_file_path_order = File.join(__dir__,"data/orders.csv")

meal_repository = MealRepository.new(csv_file_path_meal)
meals_controller = MealsController.new(meal_repository)

customer_repository = CustomerRepository.new(csv_file_path_customer)
customers_controller = CustomersController.new(customer_repository)

employee_repository = EmployeeRepository.new(csv_file_path_employee)
sessions_controller = SessionsController.new(employee_repository)

order_repository = OrderRepository.new(csv_file_path_order, meal_repository, customer_repository, employee_repository)
orders_controller = OrdersController.new(order_repository, meal_repository, customer_repository, employee_repository)
# => []
# TEST
# paul = employee_repository.find(1)
# pizza = meal_repository.find(1)
# john = customer_repository.find(2)

# p paul
# p pizza
# p john

# p Order.new(meal: pizza, customer: john, employee: paul, titi:tata)



# TEST REPO ORDER


router = Router.new(meals_controller, customers_controller, sessions_controller, orders_controller)
router.run
