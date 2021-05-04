class Repository
  def initialize
    @tasks = []
  end

  def add_a_task(task)
    @tasks << task
  end

  def destroy(task)
    @tasks.delete(task)
  end

  def find(index)
    @tasks[index]
  end

  def all
    @tasks
  end
end