class Trip
  def initialize(duration, price)
    puts 'initialize of Trip'
    @duration = duration
    @price = price
  end
end

# class inheritance syntax
class Cruise < Trip
  def initialize(duration, price)
    puts 'initialize of Cruise '
    super # call super class' initialize method
  end
end

puts 'Spain backpacing instantiation: '
spain_backpacking = Trip.new(14, 800.00)
puts ''
puts 'Cruise instantiation: '
carnival = Cruise.new(7, 2400.00)
