puts 'Each with {} block'
odds = [1, 3, 5, 7, 9]
odds.each { |number| puts(2 * number) }
puts ''

puts 'Each with begin..end block'
evens = [2, 4, 6, 8, 10]
evens.each do |number|
  puts(2 * number)
end
puts ''

puts 'Cool shorthand syntax'
numbers = %w[one two three four five]
puts numbers.each(&:upcase!)
puts ''

puts '.times'
5.times { print 'hooray!' }
