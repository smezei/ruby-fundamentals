me = {
  'name' => 'Eric',
  'age' => 26,
  'hungry?' => true
}

puts me['name']
puts me['age']
puts me['hungry?']

pets = Hash.new
pets['Stevie'] = 'cat'
puts "Stevie: #{pets['Stevie']}"
puts "stevie: #{pets['stevie']}"
puts ''

pets2 = {}

# literal notation
secret_identities = {
  'The Batman' => 'Bruce Wayne',
  'Superman' => 'Clark Kent',
  'Wonder Woman' => 'Diana Prince',
  'Freakazoid' => 'Dexter Douglas'
}

secret_identities.each do |hero, real_name|
  puts "#{hero}: #{real_name}"
end

crazy_hash = {
  'one' => 1,
  2 => 'two',
  true => 2**3,
  [1, 2, 3] => 3,
  nil => 'not nil!',
  'one' => 2, # using the same key. overrides previous value! the key 'one' returns 2 and not 1!
  'three' => 3 # same value can live under several keys!
}

crazy_hash.each do |key, value|
  puts "#{key}: #{value}"
end

puts "crazy_hash[true]: #{crazy_hash[true]}"
puts "crazy_hash[[1, 2, 3]]: #{crazy_hash[[1, 2, 3]]}"
puts "crazy_hash[nil]: #{crazy_hash[nil]}"

lunch_order = {
  'Ryan' => 'wonton soup',
  'Eric' => 'hamburger',
  'Jimmy' => 'sandwich',
  'Sasha' => 'salad',
  'Cole' => 'taco'
}

# we're only interested in the value. keys can be ignored: _
lunch_order.each { |_, value| puts value }
