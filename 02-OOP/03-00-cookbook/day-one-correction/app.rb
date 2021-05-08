require_relative "recipe"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

csv_file_path = File.join(__dir__, "recipes.csv")
repository = Repository.new(csv_file_path)
controller = Controller.new(repository, View.new)
router = Router.new(controller)

router.run