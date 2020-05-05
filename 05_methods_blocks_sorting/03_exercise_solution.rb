=begin
We noticed in the last lesson that .sort! didn’t have a built-in way of handling sorting in reverse alphabetical order.
Now that we know how to write our own Ruby methods, we can fix that!
Write a method that is
- named alphabetize
- first parameter is an array of book titles (strings)
- second parameter is a boolean that tells wether we want to sort by reverse order or not

You can use this book list as parameter:
['Heart of Darkness', 'Code Complete', 'The Lorax', 'The Prophet', 'Absalom, Absalom!']

Call the method in regular and reverse order too
=end

def alphabetize(books, rev = false)
  if rev
    books.sort { |item1, item2| item2 <=> item1 }
  else
    books.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ['Heart of Darkness', 'Code Complete', 'The Lorax', 'The Prophet', 'Absalom, Absalom!']

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
puts ''

# Alternative solution
def alphabetize2(books, rev = false)
  books.sort!
  return books.reverse! if rev

  books
end

books = ['Heart of Darkness', 'Code Complete', 'The Lorax', 'The Prophet', 'Absalom, Absalom!']

puts "A-Z: #{alphabetize2(books)}"
puts "Z-A: #{alphabetize2(books, true)}"
