require_relative 'checking_account'

class SalaryAccount < CheckingAccount

	def initialize
		super
		@montly_fee = MONTLY_FEE/2
	end

  def deposit(amount)
    @balance += amount
    log_transaction('Deposit', amount)
  end

  def withdraw(amount)
    @balance -= amount
    log_transaction('Withdrawal', amount)
  end


end