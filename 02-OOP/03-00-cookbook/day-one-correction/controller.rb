require_relative "recipe"
class Controller
  def initialize(repository, view)
    @view = view
    @repository = repository
  end

  def list
    recipes  = @repository.all 
    @view.display_all_recipes(recipes)
  end

  def create
    list
    name =  @view.ask_for("name")
    description = @view.ask_for("description")
    recipe = Recipe.new(name: name, description: description)
    @repository.add_recipe(recipe)
  end

  def destroy
    list
    index = @view.ask_for_index
    @repository.destroy(index)
  end
end