creatures = {
  'weasels' => 0,
  'puppies' => 6,
  'platypuses' => 3,
  'canaries' => 1,
  'Heffalumps' => 7,
  'Tiggers' => 1
}

puts "Non existant key: #{creatures['none']}"

hash_with_default_value = Hash.new('default value')
hash_with_default_value['key'] = 'value'

puts "Existant key: #{hash_with_default_value['key']}"
puts "Non existant key: #{hash_with_default_value['none']}"
puts ''

menagerie = {
  :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts 'string'.object_id
puts 'string'.object_id

puts :symbol.object_id
puts :symbol.object_id
puts ''

strings = %w[HTML CSS JavaScript Python Ruby]

symbols = []
strings.each { |string| symbols.push(string.to_sym) }
puts symbols
puts ''

# newer syntax instead of 'hash rocket'. Use this instead!
movies = {
  primer: 'Awesome',
  memento: 'Not as good the 2nd time'
}

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |_, rating| rating > 3 }
puts good_movies
puts ''

movie_ratings.each_key { |title| puts title }
puts ''

movie_ratings.each_value { |rating| puts rating }
