require "csv"
require_relative "../models/customer"
require_relative "../repositories/record_repository"

class CustomerRepository < RecordRepository
  private

  def csv_headers
    ["id","name","address"]
  end

  def element_to_row(customer)
    [customer.id, customer.name, customer.address]
  end

  def row_to_element(row)
    row[:id]    = row[:id].to_i
    row[:address] = row[:address]
    Customer.new(row)
  end
end