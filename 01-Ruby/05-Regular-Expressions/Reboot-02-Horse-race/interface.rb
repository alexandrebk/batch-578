# Pseudo-code:
# create balance variable
balance = 40 # initialisation de la variable à 100

# create a variable (array) containing horses names.
horses = ["Rouleau du fauteuil", "Tequila Sunrise", "Jolly Jumper", "Don't touch my tagada"]
minimum_bet = 20

until balance < 20
  # Print welcome, please bet on a horse (enter its number)
  puts "Welcome to the horse race, please choose one these horses"
  # Iterate on the array to display the horses names
  # and a number (starting)
  horses.each_with_index do |horse, index|
    puts "#{index + 1}- #{horse}"
  end
  print '>'
  # Get user's bet (integer)
  horse_player_number = gets.chomp.to_i

  # Run the race 🐴 = make our program determine which horse will win

  # Check if user wins or loses
  # horse_winner_name = horses.sample # => Tequila Sunrise
  # horse_player_name = horses[index - 1]
  # user_win = horse_winner_name == horse_player_name

  horse_winner_index = rand(0..horses.size - 1)
  user_win = horse_winner_index == horse_player_number - 1

  # Print results
  puts "The winning horse is #{horses[horse_winner_index]}."
  # user_win ? (puts "You win") : (puts "You lose")

  if user_win
    puts "You win"
    balance += minimum_bet # same as balance = balance + 50
  else
    puts "You lose"
    balance -= minimum_bet
  end

  puts "You now have #{balance}"
  puts
end

puts "You are out of money, goodbye"

# create loop that checks if user has enough money
# handle win or loss of money
