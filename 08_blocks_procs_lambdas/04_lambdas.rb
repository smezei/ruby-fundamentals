require '../lib/string_extension.rb'

puts 'lambda'.yellow
# In Ruby, a lambda is an object similar to a proc. Unlike a proc, a lambda requires a specific number of arguments
# passed to it, and it returns to its calling method rather than returning immediately.

def proc_demo_method
  proc_demo = proc { return 'Only I print!' }
  proc_demo.call
  'But what about me?' # Never reached
end

puts proc_demo_method
# Output
# Only I print!

# (Notice that the proc breaks out of the method when it returns the value.)

def lambda_demo_method
  lambda_demo = lambda { return 'Will I print?' }
  lambda_demo.call
  'Sorry - it\'s me that\'s printed.'
end

puts lambda_demo_method
