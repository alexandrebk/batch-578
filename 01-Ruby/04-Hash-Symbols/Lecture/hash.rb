students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]
student_last_name = [ "Durand", "Dupont", "Dupont","Dupont"  ]

students.each_with_index do |student, index|
  "#{student} (age: #{student_ages[index]})"
end


students = [['Peter', 24, 'Durand'], ['Mary', 25, 'Dupont']]

## Use a hash
students_age = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

# p students_age
# p students_age["Peter"]


# Example slides

paris = {
  "country" => "France",
  "population" => 2211000
}

# p paris

# puts 'Add new key'

# paris['monument'] = 'Tour eiffel'

# p paris

# paris['monument'] = 'Le Louvre'

# p paris

# paris.delete("monument")

# p paris

paris.each do |key, value|
  puts "Paris #{key} is #{value}"
end
