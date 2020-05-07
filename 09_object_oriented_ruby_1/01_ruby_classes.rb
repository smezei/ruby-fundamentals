# a Ruby class
class Language
  def initialize(name, creator) # constructor method
    @name = name # an instance variable
    @creator = creator
  end

  # an instance method
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new('Ruby', 'Yukihiro Matsumoto') # instantiating a class instance with the new class method
python = Language.new('Python', 'Guido van Rossum')
javascript = Language.new('JavaScript', 'Brendan Eich')

ruby.description # calling a method on an instance
python.description
javascript.description
