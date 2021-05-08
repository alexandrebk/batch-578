require "csv"

class Repository
  def initialize(csv_file_path)
    # TODO
    @csv_file_path = csv_file_path
    @recipes = []
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_csv
  end

  def destroy(index)
    @recipes.delete_at(index)
    save_csv
  end

  private 

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
      name = row[0]
      description = row[1]
      @recipes << Recipe.new(name: name, description: description)
    end
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
         csv << [recipe.name, recipe.description]
      end
    end
  end
end