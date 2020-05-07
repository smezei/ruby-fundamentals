require '../lib/string_extension.rb'

puts 'proc and Proc'.yellow
# In Ruby, a proc is an instance of the Proc class and is similar to a block.
# As opposed to a block, a proc is a Ruby object which can be stored in a variable
# and therefore reused many times throughout a program.

# A proc is defined by calling Proc.new followed by a block.
# no need to use it anymore. Use proc instead!
# explanation (some history): https://batsov.com/articles/2014/02/04/the-elements-of-style-in-ruby-number-12-proc-vs-proc-dot-new/
square = Proc.new { |x| x**2 }
# When passing a proc to a method, an & is used to convert the proc into a block.
puts [2, 4, 6].collect!(&square).to_s

square = proc { |x| x**2 } # alternative syntax - this is the preferred way!
puts [2, 4, 6].collect!(&square).to_s

# Why bother saving our blocks as procs? There are two main advantages:
#
# Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
# Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype
# the contents of your block every time you need to execute a particular bit of code.
