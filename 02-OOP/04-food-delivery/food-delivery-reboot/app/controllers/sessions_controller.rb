require_relative "../views/sessions_view"

class SessionsController
  def initialize(employee_repository)
    @sessions_view = SessionsView.new
    @employee_repository = employee_repository
  end

  def sign_in
    username = @sessions_view.ask_for(:username)
    password = @sessions_view.ask_for_password
    employee = @employee_repository.find_by_username(username)
    p employee
    return employee if employee && employee.password == password

    @sessions_view.print_wrong_credentials
    sign_in
  end
end
