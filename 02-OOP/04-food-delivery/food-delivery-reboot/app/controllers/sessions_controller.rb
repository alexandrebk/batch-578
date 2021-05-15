class SessionsController
  def initialize
    # TODO
  end
  
  def sign_in
    p 'toto'
    # 1. ask for username
    username = @view.ask_for("username")
    password = @view.ask_for("password")
    employee = @employee_repository.find_by_username(username)
    return employee if employee && employee.password ==  password
    @view.wrong_credentials
    # 2. ask for password
    # 3. verifier si on a un employee avec le username donné
    # 4. du coup alller l'employee dans le repo
    # 4. verifier si le password de l'employee match avec le password saisi
    sign_in
  end
end