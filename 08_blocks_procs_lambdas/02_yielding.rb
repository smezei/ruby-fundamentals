require '../lib/string_extension.rb'

puts 'yielding'.yellow
def block_test
  puts "We're in the method!"
  puts 'Yielding to the block...'
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
puts ''

puts 'yielding with parameters'.yellow

def yield_name(name)
  puts "In the method! Let's yield."
  yield('Kim')
  puts 'In between the yields!'
  yield(name)
  puts 'Block complete! Back in the method.'
end

yield_name('Eric') { |n| puts "My name is #{n}." }
puts ''

puts 'yielding with multiple parameters'.yellow
def yield_name_and_age(name, age)
  puts "In the method! Let's yield."
  yield('Kim', 25)
  puts 'In between the yields!'
  yield(name, age)
  puts 'Block complete! Back in the method.'
end

yield_name_and_age('Eric', 30) { |name, age| puts "My name is #{name}. I'm #{age} years old." }
