require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

houston=Zoo.new("houston", "Houstonzoo")
sandiego=Zoo.new("sandiego", "sandiegozoo")

cheetah=Animal.new("cat", 50, "cheetah", houston)
dog=Animal.new("dog", 20, "doggie", houston)
mouse=Animal.new("rodent", 1, "EWW!", sandiego)
mouse2=Animal.new("rodent", 2, "EWW3!", sandiego)



binding.pry
puts "done"
