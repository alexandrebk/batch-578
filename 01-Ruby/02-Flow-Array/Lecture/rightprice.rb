price_to_find = rand(1..5)
# choice = nil     # variable initialization

while choice != price_to_find
  puts "How much (between $1 and $5)?"
  choice = gets.chomp.to_i
end

puts "You won! Price was #{price_to_find}$"
