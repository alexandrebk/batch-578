class View
  def display_all_recipes(recipes)
    recipes.each do |recipe|
      puts "#{recipe.name}:  #{recipe.description}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end
end