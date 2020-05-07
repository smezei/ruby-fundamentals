require '../lib/string_extension.rb'

puts '.collect and .collect! methods'.yellow
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect { |fib| fib * 2 }
puts fibs.to_s
puts doubled_fibs.to_s

doubled_fibs = fibs.collect! { |fib| fib * 2 }
puts fibs.to_s
puts doubled_fibs.to_s
