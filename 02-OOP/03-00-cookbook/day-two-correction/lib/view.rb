class View
  def display_all_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      status  = recipe.done? ? "[X]"  : "[ ]"
      puts "#{index + 1}.  #{status} #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "index?"
    print "> "
    gets.chomp.to_i - 1
  end
end