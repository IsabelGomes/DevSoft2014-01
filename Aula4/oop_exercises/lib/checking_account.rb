require_relative 'bank_account'

class CheckingAccount < BankAccount

  def deposit(amount)
    @balance += amount
    log_transaction('Deposit', amount)
  end

  def withdraw(amount)
    if @balance >= -500+amount
        @balance -= amount
        log_transaction('Withdrawal', amount)
    end
  end

  def transfer(account, amount)
    if @balance >= amount+8
      self.withdraw(amount)
      account.deposit(amount)
      self.withdraw(8)
      log_transaction('Transfer', amount)
    end
  end

end
