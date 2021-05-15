require_relative "../models/meal"
require "csv"
require_relative "../repositories/record_repository"


class MealRepository < RecordRepository

  private

  def csv_headers
    ["id","name","price"]
  end

  def element_to_row(meal)
    [meal.id, meal.name, meal.price]
  end

  def row_to_element(row)
    row[:id]    = row[:id].to_i
    row[:price] = row[:price].to_i
    Meal.new(row)
  end
end