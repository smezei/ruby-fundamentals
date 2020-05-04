number1 = 1
number2 = 1_000

if number1 < number2
  puts 'number1 is smaller than number2'
elsif number1 > number2
  puts 'number1 is larger than number2'
else
  puts 'number1 is equal to number2'
end

occupied = false

unless occupied
  puts 'free'
end

# reads like an English sentence
puts 'also free' unless occupied

occupied = true

if occupied
  puts 'occupied'
end

# reads like an English sentence
puts 'also occupied' if occupied

# not recommended! rewrite this with the positive case first
unless number1 > number2
  puts 'number1 is smaller than number2'
else
  puts 'number1 is larger than number2 or is equal to number2'
end
