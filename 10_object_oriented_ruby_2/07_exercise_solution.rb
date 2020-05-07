# Refactor Account class by moving transaction recording to its own private method
class Account
  attr_reader :balance

  def initialize(initial_balance = 0)
    puts "Opening account with initial balance of #{initial_balance}"
    @transactions = []
    @balance = initial_balance
    record_transaction(:account_opening, initial_balance)
    puts "Successfully opened account with initial balance of #{initial_balance}..."
  end

  def deposit(amount)
    puts "Depositing amount of #{amount}..."
    @balance += amount
    record_transaction(:deposit, amount)
    puts "Successfully deposited amount of #{amount}..."
  end

  def withdraw(amount)
    puts "Withdrawing amount of #{amount}..."
    if amount > @balance
      puts 'No overdraft possible!!!'
      record_transaction(:overdraft_attempt, amount)
    else
      @balance -= amount
      record_transaction(:withdrawal, amount)
      puts "Successfully withdrawn amount of #{amount}..."
    end
  end

  def transactions
    puts 'Here are your transactions:'
    @transactions.each_with_index { |transaction, index| puts "##{index + 1} - #{transaction}" }
  end

  private

  def record_transaction(type, amount)
    @transactions.push Transaction.new(type, amount)
  end
end

class Transaction
  def initialize(type, amount)
    @type = type
    @amount = amount
  end

  def to_s
    case @type
    when :account_opening then "Account opened with initial balance of #{@amount}"
    when :deposit then "Account deposited with amount of #{@amount}"
    when :withdrawal then "Account withdrawn with amount of #{@amount}"
    when :overdraft_attempt then "Account overdraft attempted with amount of #{@amount}"
    else
      'Unknown transaction type!'
    end
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
