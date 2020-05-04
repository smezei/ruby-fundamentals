puts 'while'
i = 0
while i < 5
  puts i
  i += 1 # shortcut for i = i + 1
end
puts ''

puts 'until'
counter = 1
until counter > 10
  puts counter
  counter += 1
end
puts ''

puts 'for with exclusive range'
for num in 1...10 # exclusive range
  puts num
end
puts ''

puts 'for with inclusive range'
for num in 1..10 # inclusive range
  puts num
end
puts ''

puts 'break out of a loop'
i = 20
loop do
  i -= 1
  puts "#{i}"
  break if i <= 0 # break out of loop
end
puts ''

puts 'skip some iterations'
i = 20
loop do
  i -= 1
  next if i.odd? # skip an iteration
  puts "#{i}"
  break if i <= 0
end
