require_relative "../views/orders_view"
require_relative "../models/order"

class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository  
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @view = OrdersView.new
  end

  def add
    # 1. on demande un meal
    list_meal
    meal_id = @view.ask_for("meal").to_i 
    meal = @meal_repository.find(meal_id) 

    # 2. on demande un customer
    list_customer
    customer_id = @view.ask_for("customer").to_i  
    customer = @customer_repository.find(customer_id) 

    # 3. on demande un employee
    list_employee
    employee_id = @view.ask_for("employee").to_i  
    employee = @employee_repository.find(employee_id) 

    order = Order.new(meal: meal, customer: customer, employee: employee)
    
    @order_repository.create(order)
  end

  def list_undelivered_orders
    orders = @order_repository.undelivered_orders
    @view.display_all_orders(orders)
  end

  def list_my_orders(current_employee)
    orders = @order_repository.my_undelivered_orders(current_employee)
    @view.display_all_orders(orders)
  end

  def mark_as_delivered(current_employee)
    list_my_orders(current_employee)
    id = @view.ask_for("id")
    order = @order_repository.find(id)
    @order_repository.mark_as_delivered(order)
  end

  private 

  def list_meal
    meals = @meal_repository.all
    @view.display_meals(meals)
  end

  def list_customer
    customers = @customer_repository.all
    @view.display_customers(customers)
  end

  def list_employee
    employees = @employee_repository.all_riders
    @view.display_employees(employees)
  end




end