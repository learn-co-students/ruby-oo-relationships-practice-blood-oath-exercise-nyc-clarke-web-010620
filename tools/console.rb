require_relative '../config/environment.rb'
require_relative '../app/cult.rb'
require_relative '../app/follower.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts "Mwahahaha!" # just in case pry is buggy and exits

c1 = Cult.new("Jerry", "New York", 2019, "the mop")
c2 = Cult.new("Alex", "Los Angeles", 2018, "the sword")
c3 = Cult.new("Death", "New Jersey", 2019, "the blood of many")
c4 = Cult.new("ff", "New Jersey", 2019, "the blood")

f1 = Follower.new("Tom", 22, "I dont give a fuck")
f2 = Follower.new("John", 40, "I am old")
f3 = Follower.new("Theresa", 17, "I am young and niave")

#[
b1 = BloodOath.new(c1, f2, "2019-01-13")
b2 = BloodOath.new(c3, f1, "1968-01-13")
b3 = BloodOath.new(c2, f3, "2001-09-26")
b4 = BloodOath.new(c1, f1, "1894-12-20")
b5 = BloodOath.new(c3, f1, "2007-05-19")
#]

# b6 = BloodOath.new(cult1, f3, "2007-05-19")

binding.pry 
# f1.join_cult(cult1)
# f1.cult