require_relative './app/cult.rb'
require_relative './app/followers.rb'
require_relative './app/bloodoath.rb'


scientology = Cult.new("scientology", "LA", 2001, "free yo self")
manson_family= Cult.new("Manson", "NYC", 2001, "yo people")


jorge = Follower.new("Jorge", 18, "wildself")
mokhtar = Follower.new("mokhtar", 60, "hiya")

b1 = Bloodoath.new(jorge, manson_family, "2020-01-10")
b2 = Bloodoath.new(mokhtar, manson_family, "2020-01-10")


# puts b1.follower.name
# puts b1.cult.name
# puts manson_family.followers
# puts jorge.cults

scientology.recruit_follower(jorge)
mokhtar.join_cult(scientology)

# puts jorge.cults

# puts scientology.average_age

scientology.my_followers_mottos

# puts mokhtar 

puts Cult.least_popular[0].name

puts Cult.most_common_location

jorge.my_cults_slogans

puts Follower.most_active

puts Follower.top_ten
