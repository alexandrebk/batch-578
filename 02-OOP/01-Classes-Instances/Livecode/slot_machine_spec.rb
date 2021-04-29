require_relative 'slot_machine'

p SlotMachine.new(["joker", "joker", "joker"]).calculate_score == 50
p SlotMachine.new(["cherry", "cherry", "cherry"]).calculate_score == 10
p SlotMachine.new(["star", "star", "joker"]).calculate_score == 20

p SlotMachine.new(["joker", "star", "joker"]).calculate_score == 25
p SlotMachine.new(["joker", "seven", "seven"]).calculate_score == 10

p SlotMachine.new(["joker", "bell", "seven"]).calculate_score == 0
