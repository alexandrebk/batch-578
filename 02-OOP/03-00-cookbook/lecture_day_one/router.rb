class Router
  def initialize(controller)
    # TODO
    @controller =  controller
    @run =  true
  end

  def start
    while @run
      print_menu
      print "> "
      choice = gets.chomp.to_i
      action(choice)
    end
  end

  def action(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.add_a_task
    when 3 then @controller.mark_as_done
    when 4 then @run = false
    else
      "try again!"
    end
  end

  def print_menu
    puts "1. list your tasks"
    puts "2. add a task"
    puts "3. mark a task as done"
    puts "4. exit"
  end
end