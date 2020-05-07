# Write an Account class that:
# - has a read only balance instance variable
# - has a transactions instance variable - array of Transaction instances
# - has initialize method that:
#   - sets initial balance defined by its attribute
#   - adds account opning transaction to transactions array
# - has deposit method - don't forget to record transaction!
# - has withdraw method - don't forget to check whether there's enough balance - no overdraft! - don't forget to record transaction!
# - has transactions method - lists transactions

# Write Transaction class that:
# - has type and amount
class Account
  attr_reader :balance

  def initialize(initial_balance)
    puts "Opening account with initial balance of #{initial_balance}"
    @transactions = []
    @balance = initial_balance
    transaction = Transaction.new(:account_opening, initial_balance)
    @transactions.push transaction
    puts "Successfully opened account with initial balance of #{initial_balance}..."
  end

  def deposit(amount)
    puts "Depositing amount of #{amount}..."
    @balance += amount
    transaction = Transaction.new(:deposit, amount)
    @transactions.push transaction
    puts "Successfully deposited amount of #{amount}..."
  end

  def withdraw(amount)
    puts "Withdrawing amount of #{amount}..."
    if amount > @balance
      puts 'No overdraft possible!!!'
      transaction = Transaction.new(:overdraft_attempt, amount)
      @transactions.push transaction
      return
    end

    @balance -= amount
    transaction = Transaction.new(:withdrawal, amount)
    @transactions.push transaction
    puts "Successfully withdrawn amount of #{amount}..."
  end

  def transactions
    puts 'Here are your transactions:'
    @transactions.each_with_index do |transaction, index|
      print "##{index + 1} - "
      case transaction.type
      when :account_opening
        puts "Account opened with initial balance of #{transaction.amount}"
      when :deposit
        puts "Account deposited with amount of #{transaction.amount}"
      when :withdrawal
        puts "Account withdrawn with amount of #{transaction.amount}"
      when :overdraft_attempt
        puts "Account overdraft attempted with amount of #{transaction.amount}"
      else
        puts 'Unknown transaction type!'
      end
    end
  end
end

class Transaction
  attr_reader :type, :amount

  def initialize(type, amount)
    @type = type
    @amount = amount
  end
end

account = Account.new(2000)
puts "Current balance: #{account.balance}"

account.deposit 1000
puts "Current balance after deposit: #{account.balance}"

account.withdraw 5000

account.withdraw 500
puts "Current balance after withdrawal: #{account.balance}"

puts ''
account.transactions
