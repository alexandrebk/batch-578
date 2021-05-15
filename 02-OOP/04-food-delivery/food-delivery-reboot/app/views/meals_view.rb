class MealsView
  def display(meals)
    # TODO
    meals.each do |meal|
      puts "#{meal.id}. #{meal.name} - #{meal.price} €"
    end

  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end
end