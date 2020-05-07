=begin
Refactor the below code using the techniques learned in this module
=end

require 'prime'

def first_n_primes(n)
  return 'n must be an integer.' unless n.is_a? Integer
  return 'n must be greater than 0.' if n <= 0

  Prime.first n
end

puts first_n_primes(10)
