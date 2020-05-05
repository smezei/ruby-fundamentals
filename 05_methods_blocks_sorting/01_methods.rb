def prime(number)
  puts 'That\'s not an integer.' unless number.is_a? Integer
  is_prime = true
  (2..(number - 1)).each do |i|
    is_prime = false if (number % i).zero?
  end
  if is_prime
    puts "#{number} is prime!"
  else
    puts "#{number} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
puts ''

# splat arguments
def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up('What up', 'Ian', 'Zoe', 'Zenas', 'Eleanor')

# methods vs. blocks
# The capitalize method capitalizes a word, and we can continually invoke the capitalize method by name. AS many time
# as we want...

# However, the block that we define (following .each) will only be called once, and in the context of the array that
# we are iterating over. It appears just long enough to do some work for each, then vanishes into the night.

# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize('ryan') # prints 'Ryan'
capitalize('jane') # prints 'Jane'

# block that capitalizes each string in the array
['ryan', 'jane'].each do |string|
  puts "#{string[0].upcase}#{string[1..-1]}" # prints 'Ryan', then 'Jane'
end

books = ['Charlie and the Chocolate Factory', 'War and Peace', 'Utopia', 'A Brief History of Time', 'A Wrinkle in Time']

# To sort our books in ascending order, in-place
books.sort! { |first_book, second_book| first_book <=> second_book }

# Sorting books in descending order, in-place
books.sort! { |first_book, second_book| second_book <=> first_book }
