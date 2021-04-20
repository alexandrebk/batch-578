require_relative "calculator"

try_again = "Y"

while try_again == "Y"
  puts "Hello! Welcome to the calculator."
  puts "Please enter the first number:"
  print ">"
  number1 = gets.chomp.to_i
  puts "Please enter the operation [+][-][x][/]:"
  operator = gets.chomp
  puts "Please enter the second number:"
  print ">"
  number2 = gets.chomp.to_i

  result = calculate(number1, number2, operator)

  if result.nil?
    puts "There was a problem"
  else
    puts "The result is #{result}."
  end

  puts
  puts

  puts "Do you want to calculate again? [Y/N]"
  try_again = gets.chomp.upcase
end
