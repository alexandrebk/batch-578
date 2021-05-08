class Router
  def initialize(controller)
    @run = true
    @controller  = controller
  end

  def run 
    while @run
      display_menu
      choice = gets.chomp.to_i
      route_action(choice)
    end
  end

  private

  def display_menu
    puts "1. list all recipes"
    puts "2. add a recipe"
    puts "3. destroy a recipe"
    puts "4. exit"
  end

  def route_action(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @run = false
    end
  end


end