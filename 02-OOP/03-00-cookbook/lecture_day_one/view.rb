class View

  def display_all_task(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1}. #{status} #{task.description}"
    end
  end

  def ask_for_description
    puts "what is your task ?"
    print "> "
    return gets.chomp
  end

  def ask_for_task
    puts "what task would you like to mark as done ?"
    print "> "
    return gets.chomp.to_i - 1
  end
end