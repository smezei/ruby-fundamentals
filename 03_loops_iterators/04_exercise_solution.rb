=begin
Write a script that
- asks for a text to search through
- asks for a word to redact
- prints out the text with the word redacted

Extra questions:
- What could you do to make sure your redactor redacts a word regardless of whether it’s upper case or lower case?
- How could you make your program take multiple, separate words to REDACT?
- How might you make a new redacted string and save it as a variable, rather than just printing it to the console?
=end

puts 'Text to search through: '
text = gets.chomp
puts 'Word to redact: '
redact = gets.chomp

words = text.split(' ')

words.each do |word|
  if word != redact
    print word + ' '
  else
    print 'REDACTED '
  end
end
