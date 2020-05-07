require '../lib/string_extension.rb'

puts '.call method'.yellow
proc_test = proc { puts 'I am the proc method!' }
lambda_test = lambda { puts 'I am the lambda method!' }
lambda_test2 = -> { puts 'I am the other lambda method!' } # alternative syntax - this is the preferred way for single line lambdas!

proc_test.call
lambda_test.call
lambda_test2.call
