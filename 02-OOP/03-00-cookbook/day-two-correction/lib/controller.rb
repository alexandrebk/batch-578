require_relative "recipe"
require_relative "scrapper"

class Controller
  def initialize(cookbook, view)
    @view = view
    @cookbook = cookbook
  end

  def list_recipes
    recipes  = @cookbook.all 
    @view.display_all_recipes(recipes)
  end

  def create_recipe
    name =  @view.ask_for("name")
    description = @view.ask_for("description")
    recipe = Recipe.new(name: name, description: description)
    @cookbook.add_recipe(recipe)
  end

  def destroy_recipe
    list
    index = @view.ask_for_index
    @cookbook.destroy(index)
  end

  def import
    # ask the user an item to search for 
    ingredient = @view.ask_for("ingredient")
    # scrap the internet to find the recipes
    results = Scrapper.new(ingredient).call
    # display the results
    @view.display_all_recipes(results)
    # ask for a recipe to import
    index = @view.ask_for_index
    # add it to the cookbook
    @cookbook.add_recipe(results[index])
    # display
  end

  def mark_as_done
    # list
    list_recipes
    # selectionne une recette to mark
    index = @view.ask_for_index
    # mark la recette
    recipe = @cookbook.find(index)
    recipe.done!
    @cookbook.update(recipe)
  end

end