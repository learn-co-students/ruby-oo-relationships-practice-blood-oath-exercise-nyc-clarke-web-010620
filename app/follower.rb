require_relative '../config/environment.rb'
# require_relative '../app/cult.rb'
# require_relative '../tool/console.rb'

require "pry"
class Follower 
    attr_accessor :name, :age, :life_motto

    @@all = [] 

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        @cults = [] 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def join_cult(cult)
        binding.pry
        cult.followers << self 
    end 

    def self.of_a_certain_age(int)
        @followers.select do |follower|
            follower.age >= int
        end
    end

end 


# Follower

# Follower#name
# returns a String that is the follower's name
# Follower#age
# returns an Integer that is the age of the follower
# Follower#life_motto
# returns a String that is the follower's life motto
# Follower#cults
# returns an Array of this follower's cults
# Follower#join_cult
# takes in an argument of a Cult instance and adds this follower to the cult's list of followers
# Follower.all
# returns an Array of all the followers
# Follower.of_a_certain_age
# takes an Integer argument that is an age and returns an Array of followers who are the given age or older

