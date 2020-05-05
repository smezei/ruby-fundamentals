demo_array = [100, 200, 300, 400, 500]

# indexing starts at 0!
puts demo_array[2]

string_array = ['one', 'two', 'three']

alternative_string_array = %w[one two three]

puts string_array == alternative_string_array

# array of arrays
multi_d_array = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [
  [1, 2, 3],
  ['one', 'two', 'three'],
  [nil, true, false]
]
my_2d_array.each { |x| puts "#{x}\n" }

# crazy but still valid
an_array = [2.odd?, !true, [nil, nil, nil]]
crazy_array = [
  [1, nil, 3],
  %w[one two three],
  1,
  an_array,
  String,
  true,
  [nil, true, false],
  [],
  [[]]
]
crazy_array.each { |x| puts "#{x}\n" }

puts %w[one two three].each(&:upcase!)

# iterating through arrays of arrays
s = [['ham', 'swiss'], ['turkey', 'cheddar'], ['roast beef', 'gruyere']]

s.each do |sub_array|
  sub_array.each { |item| puts item }
end
