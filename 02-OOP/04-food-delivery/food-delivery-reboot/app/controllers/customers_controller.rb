require_relative "../views/customer_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customer_repository)
    # TODO
    @customer_repository = customer_repository
    @customer_view = CustomerView.new
  end

  def list
    # 1. on doit récupérer les customers
    customers = @customer_repository.all
    # 2. on doit display les customers
    @customer_view.display(customers)
  end

  def add
    # 1. on doit demander un name
    name = @customer_view.ask_for("name")
    # 2. on demande un price au user
    address = @customer_view.ask_for("address")
    # 3. on crée une instance de customer
    customer  = Customer.new(name: name, address: address)
    # 4. on persist le customer
    @customer_repository.create(customer)
  end
end
