# You can think of a module as a toolbox that contains a set methods and constants.
# There are lots and lots of Ruby tools you might want to use, but it would clutter
# the interpreter to keep them around all the time. For that reason, we keep a bunch
# of them in modules and only pull in those module toolboxes when we need the constants
# and methods inside!
#
# You can think of modules as being very much like classes, only modules can't create
# instances and can't have subclasses. They’re just used to store things!
module Circle
  PI = 3.141592653589793

  # class method
  def self.area(radius)
    PI * radius**2
  end

  def self.circumference(radius)
    2 * PI * radius
  end
end

radius = 10
puts "Area: #{Circle.area(radius)}"
puts "Circumference: #{Circle.circumference(radius)}"

puts 'Caution! Constants can be overridden in Ruby. But we\'ll get a warning message.'
Circle::PI = 4
puts Circle::PI
