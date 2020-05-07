# :: scope resolution operator
module Circle
  PI = 4
end

puts "Circle::PI: #{Circle::PI}"
# Math module is always available in the interpreter. No need requiring it
puts "Math::PI: #{Math::PI}"

# Date module is not available in the interpreter by default. Needs to be required
require 'date'
puts "Date.today: #{Date.today}"

# constant PI without namspace doesn't exist
puts "PI: #{PI}"
