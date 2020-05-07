class Student
  attr_reader :name
  attr_writer :name
  # attr_accessor is a shortcut for both attr_reader and attr_writer
  # attr_accessor :name

  def initialize(name)
    @name = name
  end
end
# In this example, Ruby is able to both read and write the @name instance variable since it was passed to attr_reader
# and attr_writer as a symbol.

puts 'Let\'s create a Student instance'
top_student = Student.new('Jyothi')
puts 'Let\'s read student\'s name'
puts top_student.name # => Jyothi
# In classes with attr_reader, instance variables can be accessed using . notation

puts 'Student\'s name is still the same'
puts top_student.name # => Jyothi
puts 'Let\'s overwrite student\'s name'
top_student.name = 'Anika'
puts 'Let\'s read student\'s name again'
puts top_student.name # => Anika
# In classes with attr_writer, instance variables can be reassigned using . notation
