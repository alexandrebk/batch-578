puts "What hour is it?"
hour = gets.chomp.to_i

# hour  = "6"

# Entre 8 et 12 puis entre 14 et 18
# condition = (8 <= hour) && (hour <= 12) || (14 <= hour) && (hour <= 18)

morning_hours   = 8 <= hour && hour <= 12
afternoon_hours = 14 <= hour && hour <= 18

condition = morning_hours || afternoon_hours

if condition
  puts "OPEN"
else
  puts "CLOSED"
end
