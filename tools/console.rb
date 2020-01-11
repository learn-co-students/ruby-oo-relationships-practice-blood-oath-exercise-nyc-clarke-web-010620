require_relative '../config/environment.rb'
# require_relative '../app/cult.rb'
# require_relative '../app/follower.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts "Mwahahaha!" # just in case pry is buggy and exits

cult1 = Cult.new("Jerry", "New York", 2019, "the mop")
cult2 = Cult.new("Alex", "Los Angeles", 2018, "the sword")
cult2 = Cult.new("Death", "New Jersey", 2019, "the blood of many")

f1 = Follower.new("Tom", "22", "I dont give a fuck")
f2 = Follower.new("John", "40", "I am old")
f3 = Follower.new("Theresa", "17", "I am young and niave")


f1.join_cult(cult1)
# f1.cult