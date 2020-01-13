require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

scientology = Cult.new("scientology", "LA", 2001, "free yo self")
manson_family= Cult.new("Manson", "NYC", 2001, "yo people")


jorge = Follower.new("Jorge", 18, "wildself")
mokhtar = Follower.new("mokhtar", 60, "hiya")

b1 = Bloodoath.new(jorge, manson_family, "2020-01-10")
b2 = Bloodoath.new(mokhtar, manson_family, "2020-01-10")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
