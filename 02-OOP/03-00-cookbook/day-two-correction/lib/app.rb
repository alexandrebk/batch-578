require_relative "cookbook"
require_relative "view"
require_relative "controller"
require_relative "router"

csv_file_path = File.join(__dir__, "recipes.csv")
cookbook = Cookbook.new(csv_file_path)
controller = Controller.new(cookbook, View.new)
router = Router.new(controller)

router.run