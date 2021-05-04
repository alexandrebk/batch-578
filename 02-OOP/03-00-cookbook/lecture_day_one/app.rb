require_relative "task.rb"
require_relative "repository.rb"
require_relative "view.rb"
require_relative "controller.rb"
require_relative "router.rb"

view = View.new
repo = Repository.new
controller = Controller.new(repo, view)
router = Router.new(controller)

router.start