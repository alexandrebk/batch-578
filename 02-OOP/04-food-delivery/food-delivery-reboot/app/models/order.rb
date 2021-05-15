class Order
  attr_accessor :id
  attr_reader :meal, :customer, :employee
  def initialize(attributes = {})
    @delivered = attributes[:delivered] || false
    @meal = attributes[:meal]
    @customer = attributes[:customer]
    @employee = attributes[:employee]
    @id = attributes[:id]
  end

  def delivered?
    @delivered
  end

  def deliver!
    @delivered = true
  end
end