number = 10

lower_limit = 1
upper_limit = 100

if number >= lower_limit && number <= upper_limit
  puts 'number is within range'
else
  puts 'number is out of range'
end

if number < lower_limit || number > upper_limit
  puts 'number is out of range'
else
  puts 'number is within range'
end

# Short-circuit evaluation

word = 'word'

# ruby convention: if method name ends in ? the method returns true or false
def very_long_word?
  puts 'this method is not called'
end

def another_very_long_word?
  puts 'this method is called'
  true
end

if word.length > 3 || very_long_word?
  puts 'long word'
end

if word.length < 3 || another_very_long_word?
  puts 'long word too'
end

account_ids = [13, 37, 79]

def lots_of_accounts?
  puts 'this method is not called'
end

def few_accounts?
  puts 'this method is called'
  true
end

if account_ids.size == 5 && lots_of_accounts?
  puts 'lots of accounts'
end

if account_ids.size == 3 && few_accounts?
  puts 'few accounts'
end
