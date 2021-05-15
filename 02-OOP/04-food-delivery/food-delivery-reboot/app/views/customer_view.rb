class CustomerView
  def display(customers)
    # TODO
    customers.each do |customer|
      puts "#{customer.id}. #{customer.name} - #{customer.address} €"
    end

  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end
end