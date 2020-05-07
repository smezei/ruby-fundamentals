# ternary operator
tacos_eaten = 12

puts tacos_eaten >= 5 ? 'Sir, you\'ve had enough!' : 'Keep eating tacos!'
puts ''

# case statement
language = 'Ruby'
case language
when 'JS' then puts 'Websites!'
when 'Python' then puts 'Science!'
when 'Ruby' then puts 'Web apps!'
else puts 'I don\'t know!'
end

# conditional assignment
favorite_book = nil
puts favorite_book

favorite_book ||= 'Cat\'s Cradle'
puts favorite_book

favorite_book ||= 'Why\'s (Poignant) Guide to Ruby'
puts favorite_book

favorite_book = 'Why\'s (Poignant) Guide to Ruby'
puts favorite_book
puts ''

# implicit return
def product(x, y)
  x * y
end

puts product(5, 4)

# .upto and .downto methods
'B'.upto('F') { |letter| print letter, ' ' }
5.downto(0) { |num| print num, ' ' }
puts ''

# .respond_to? method
puts 'A'.respond_to?(:push)
puts 'A'.respond_to?(:next)
puts ''

# .push and + method alternative
alphabet = ['a', 'b', 'c']
alphabet.push('d')
puts alphabet

caption = 'A giraffe surrounded by '
caption += 'weezards!'
puts caption

array = [1, 2, 3]
array << 4
puts array

puts 'Hello,' << ' welcome to Planet Earth.'
puts ''

# string interpolation
age = 26
puts 'I am ' + age.to_s + ' years old.'
puts 'I am ' << age.to_s << ' years old.'

# no need for to_s:
puts "I am #{age} years old."
