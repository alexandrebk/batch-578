class View
  def display_all_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe do you want to delete  ?"
    print "> "
    gets.chomp.to_i - 1
  end
end