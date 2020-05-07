# When a module is used to mix additional behavior and information into a class, it’s called a mixin.
# Mixins allow us to customize a class without having to rewrite code!
class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians) #cos is available from Math module
  end
end

acute = Angle.new(1)
puts "acute.cosine: #{acute.cosine}"
