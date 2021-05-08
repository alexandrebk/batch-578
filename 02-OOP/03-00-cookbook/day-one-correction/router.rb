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
    puts "4 - Stop and exit the program"
    print "> "
  end

  def route_action(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else
      puts "Please press 1, 2, 3, 4"
    end
  end

  def stop
    @run = false
  end
end