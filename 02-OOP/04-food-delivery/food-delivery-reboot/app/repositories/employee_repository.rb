require_relative "../models/employee"
require "csv"
require_relative "../repositories/record_repository"

class EmployeeRepository < RecordRepository
  private

  def csv_headers
    ["id","name"]
  end

  def element_to_row(employee)
    [employee.id, employee.name, employee.price]
  end

  def row_to_element(row)
    row[:id]    = row[:id].to_i
    # row[:] = row[:].to_i
    Employee.new(row)
  end
end