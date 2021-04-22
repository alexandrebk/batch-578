# Pseudo-code
require 'amazing_print'
require 'pry'

# STEP 1
# Store = 1 variable
# hash.  Key: name of product,   Value: price
# Cart = 1 variable, array ['kiwi', 'kiwi']
store = {
  "kiwi" => { price: 1, stock: 4 },
  "banana" => { price: 0.5, stock: 30 },
  "mango" => { price: 4, stock: 1 }
}

# cart = []
cart = {}

puts '----------'
puts "Welcome to Instacart"
puts '----------'
puts "In our store today:"

# store.each do |product_name, product_price|
store.each do |product_name, product_info|
  puts "#{product_name}: #{product_info[:price]}€ (#{product_info[:stock]} available)"
end

puts '----------'

user_input = ''

until user_input == 'quit'
  puts "Which item? (or 'quit' to checkout)"
  user_input = gets.chomp

  if store.key?(user_input)
    puts "How many?"
    user_quantity = gets.chomp.to_i
    # cart << user_input # TODO : change
    if user_quantity <= store[user_input][:stock]
      cart[user_input] = user_quantity
      # ap cart  # for debug
      puts "#{user_input.capitalize} was added to your shopping cart (x#{user_quantity})."
      store[user_input][:stock] -= user_quantity
    else
      puts 'Not available'
    end
  elsif user_input != 'quit'
    puts "Item not in store"
  end
end

# STEP1: cart = ['kiwi', 'mango', 'asparagus']
# STEP2: cart = {"kiwi" => 3,"mango" => 1}

puts '-------BILL---------'
total_price = 0
cart.each do |item, quantity|
  # total_price += store[item]
  total_item_price = quantity * store[item][:price]
  puts "#{item}: #{quantity} x #{store[item][:price]} = #{total_item_price}€"
  total_price += total_item_price
end

puts "Total price: #{total_price}€"
puts '--------------------'


# Define your store (what items are for sale?) store = { ...}

# Print Welcome

# check if we should ask if user wants to buy (use a loop while/until)
# initialisation of the loop ?
# Display list of item with their prices

# Ask user what he/she wnats (puts)
# Get user choice, product or quit (gets)
# Verify validity of user choice (product, quit or invalid entry)
# Add product to cart

# When user quits:
# calculate total price
# display total price



# STEP 2
# cart = { kiwi: 2 }
