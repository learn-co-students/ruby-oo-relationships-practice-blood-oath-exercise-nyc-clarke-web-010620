require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



# # just in case pry is buggy and exits

c1 = Cult.new("satan","staten island", 1999, "We love satan")
c2 = Cult.new("satan","staten island", 1999, "We love satan")
c13= Cult.new("satan","Long Island", 1999, "We love satan")

f1 = Follower.new("Granit",22)
f2 = Follower.new("Granit",22)
f1.life_motto = "Giannis 2021"

b1 = c1.recruit_follower(f1)


binding.pry