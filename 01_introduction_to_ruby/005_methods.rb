name = 'John Doe'

puts "[name] variable is a #{name.class}"
puts "Name's length: #{name.length}"
puts "Name in reverse: #{name.reverse}"
puts "Name in upcase: #{name.upcase}"
puts "Name in downcase: #{name.downcase}"

capital = 'budapest'

puts "Hungary's capital: #{capital.capitalize}"
puts capital

capital = 'berlin'
puts "Germany's capital: #{capital.capitalize!}"
puts capital
