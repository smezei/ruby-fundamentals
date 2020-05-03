=begin
Write a script that asks for the user's
- first name
- last name
- city
- US state

And prints the following text:

Your name is John Doe and you're from Austin, TX!

User should be able to type john instead of John and tx instead of TX.
=end

print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"
