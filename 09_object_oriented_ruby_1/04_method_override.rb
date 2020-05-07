class Creature
  def initialize(name)
    @name = name
  end

  def fight
    'Punch to the chops!'
  end
end

class Dragon < Creature
  def fight
    'Breathing fire!'
  end
end

creature = Creature.new('Creature')
dragon = Dragon.new('Dragon')

puts "This is how a creature fights: #{creature.fight}"
puts "This is how a dragon fights: #{dragon.fight}"
