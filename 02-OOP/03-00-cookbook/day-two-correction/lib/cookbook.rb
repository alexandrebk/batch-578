require "csv"

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_csv
  end

  def all
    @recipes
  end

  def find(index)
    @recipes[index]
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
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      done  = row[:done] == "true"
      @recipes << Recipe.new(row)
    end
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << ["name","description","done"]
      @recipes.each do |recipe|
         csv << [recipe.name, recipe.description, recipe.done?]
      end
    end
  end
end