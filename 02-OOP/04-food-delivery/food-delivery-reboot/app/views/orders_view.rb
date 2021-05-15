class OrdersView
  def display_all_orders(orders)
    orders.each do |order|
      puts "#{order.id}. #{order.meal.name} customer: #{order.customer.name} | employee: #{order.employee.username}"
    end
  end

  def display_meals(meals)
    meals.each do |meal|
      puts "#{meal.id}. #{meal.name}"
    end
  end
  
  def display_customers(customers)
    customers.each do |customer|
      puts "#{customer.id}. #{customer.name}"
    end
  end

  def display_employees(employees)
    employees.each do |employee|
      puts "#{employee.id}. #{employee.username}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end
end