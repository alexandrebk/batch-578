class Router
  def initialize(controller)
    @run = true
    @controller  = controller
  end

  def run 
    puts "Welcome to the Cookbook!"
    puts "           --           "

    while @run
      display_menu
      choice = gets.chomp.to_i
      print `clear`
      route_action(choice)
    end
  end

  private

  def display_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - import from internet"
    puts "5 - mark as done"
    puts "6 - Stop and exit the program"
    print "> "
  end

  def route_action(choice)
    case choice
    when 1 then @controller.list_recipes
    when 2 then @controller.create_recipe
    when 3 then @controller.destroy_recipe
    when 4 then @controller.import
    when 5 then @controller.mark_as_done
    when 6 then stop
    else
      puts "Please press 1, 2, 3, 4, 5"
    end
  end

  def stop
    @run = false
  end
end