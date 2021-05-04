require_relative "task.rb"
require_relative "repository.rb"
require_relative "view.rb"
require_relative "controller.rb"

course = Task.new("faire les courses")
menage = Task.new("faire le ménage")

repo = Repository.new

repo.add_a_task(course)
repo.add_a_task(menage)

controller =  Controller.new(repo, View.new)

controller.list