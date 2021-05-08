require_relative "recipe"
class Controller
  def initialize(repository, view)
    # todo 
    @view = view
    @repository = repository
  end

  def list
    recipes  = @repository.all 
    @view.display_all_recipes(recipes)
  end

  def create
    name =  @view.ask_for("name")
    description = @view.ask_for("description")
    recipe = Recipe.new(name: name, description: description)
    @repository.add_recipe(recipe)
    list
  end

  def destroy
  end
end