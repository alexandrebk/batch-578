require_relative "task.rb"

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def list
    tasks = @repository.all
    @view.display_all_task(tasks)
  end

  def add_a_task
    # demander sa description
    description =  @view.ask_for_description
    # creer la task
    task = Task.new(description)
    # ajouter dans le repo
    @repository.add_a_task(task)

  end

  def mark_as_done
    # 1. demander au user quelle tache il souhaite accomplir
    task_index = @view.ask_for_task
    task = @repository.find(task_index)
    task.mark_as_done!
  end
end