class Account
  def withdraw(amount)
    say_hello
    get_pin_code
    check_account_balance
    give_money
  end

  private

  def say_hello
  end

  def get_pin_code
  end

  def check_account_balance
  end

  def give_money
  end
end


Account.new.give_money
