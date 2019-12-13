require_relative '../config/environment.rb'
# require_relative '../app/models/cult.rb'
# require_relative '../app/models/follower.rb'
# require_relative '../app/models/blood_oath.rb'


def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult1 = Cult.new("Test", "NYC", 1990, "Learn Love Code")

follower1 = Follower.new("John", 24, "I love cults")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
