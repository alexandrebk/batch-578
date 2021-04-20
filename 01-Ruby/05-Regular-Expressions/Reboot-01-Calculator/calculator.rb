def calculate(num1, num2, operator)
  case operator
  when "+" then return num1 + num2
  when "-" then return num1 - num2
  when "x" then return num1 * num2
  when "/" then return num1 / num2.to_f
  else return nil
  end
end
