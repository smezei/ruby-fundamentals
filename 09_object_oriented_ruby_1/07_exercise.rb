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
        @balance =  initial_balance
    
        @transactions = []
        transaction = Transaction.new(:opening_account, initial_balance)
        @transactions.push transaction
    end     
 
    def deposit(amount)
        @balance += amount
        transaction = Transaction.new(:deposit, amount)
        @transactions.push transaction
    end

    def withdraw(amount)
        if @balance - amount >= 0
            @balance -= amount
            transaction = Transaction.new(:withdraw, amount)
            @transactions.push transaction
        else
           puts "No money!"    
        end
    end

    def transactions
         @transactions.each { |transaction| puts "Transaction type: #{transaction.type},  transaction amount: #{transaction.amount}" }
    end
end

class Transaction
    attr_reader :type
    attr_reader :amount
    
    def initialize(type, amount)
        @type = type
        @amount = amount
    end
end

account = Account.new(5000)
account.deposit(1000)
account.withdraw(10000)
account.withdraw(4000)
account.transactions
