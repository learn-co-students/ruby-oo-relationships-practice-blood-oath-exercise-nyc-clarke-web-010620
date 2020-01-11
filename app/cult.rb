require_relative '../config/environment.rb'
# require_relative '../tool/console.rb'
# require_relative '../app/follower.rb'

require "pry"

class Cult

    attr_accessor :name, :location, :slogan, :followers
    attr_reader :founding_year

    @@all = []
     
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end

    def followers_df 
         @followers 
    end 

    def recruit_follower(follower)
        @followers << follower
    end

    def Cult_population
        @followers.count
    end

    def self.all
       @@all
    end

    def self.find_by_name(string)
         @@all.select do |cult|
            cult.name == string
         end
    end 

    def self.find_by_location(place)
        @@all.select do |cult|
            cult.location == place
         end
    end 

    def self.find_by_founding_year(number)
        @@all.select do |cult|
            cult.founding_year == number
         end
    end 
    end 

    cult1 = Cult.new("Jerry", "New York", 2019, "the mop")
    cult2 = Cult.new("Alex", "Los Angeles", 2018, "the sword")
    cult2 = Cult.new("Death", "New Jersey", 2019, "the blood of many")
  

    cult1 = Cult.new("Jerry", "New York", 2019, "the mop")
    cult2 = Cult.new("Alex", "Los Angeles", 2018, "the sword")
    cult2 = Cult.new("Death", "New Jersey", 2019, "the blood of many")
    