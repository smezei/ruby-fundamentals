require 'test/unit/assertions'
include Test::Unit::Assertions

name = 'Matthew'

# Task: reverse the character order and change to upper case
processed_name = name

assert_equal processed_name, 'WEHTTAM'
