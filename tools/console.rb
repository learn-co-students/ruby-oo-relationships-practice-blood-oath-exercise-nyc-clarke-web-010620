require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#(name,location,founding_year,slogan)
#(name,age,life_motto)
dog_lovers = Cult.new("Dog lovers", "San Fransisco", 2013, "woof")
cat_lovers = Cult.new("Cat lovers", "San Fransisco", 2018, "meow")
fight_club = Cult.new("Fight Club", "Wilmington", 1999, "Don't Talk About Fight Club")
science_angels = Cult.new("Science Angels", "Jacksonville", 2002, "You are the light")
illuminati = Cult.new("Illuminati", "Rome", 324, "we are everywhere")


danny_d = Follower.new("Danny", 29, "Man cannot discover new oceans unless he has the courage to lose sight of the shore.")
manny_m = Follower.new("Manny", 26, "When nothing goes right, Go left.")
tony_t = Follower.new("Tony", 47, "I didn't do it but if I did, I was drunk.")
liz = Follower.new("Liz", 27, "Always late, but worth the wait.")
tommy = Follower.new("Tommy", 34, "Sarcasm. Because beating the shit out of people is illegal.")
walter = Follower.new("Walter", 45, "There's no remote for life. Get up and change it yourself.")
ralph = Follower.new("Ralph", 39, "Life’s hard. It’s even harder when you’re stupid.")
toby = Follower.new("Toby", 33, "“Life’s too short to kill time, life is perfectly timed…slowly killing you instead..")
nancy = Follower.new("Nancy", 25, "Just chuck it in the fuck it bucket and move on.")
peter = Follower.new("Peter", 20, "spend fiddies.pet kitties.suck tiddies.")
susan = Follower.new("Susan", 52, "Do not take life too seriously. You will never get out of it alive.")
edmund = Follower.new("Edmund", 21, "I am unable to quit, As I am currently too legit.")
tyler = Follower.new("Tyler", 57, "It's only after you've lost everything that you're free to do anything.")
jack = Follower.new("Jack", 52, "I am Jack's smirking revenge.")

#(follower, cult, initiation_date)
BO1 = Blood_oath.new(danny_d, dog_lovers, "2013-12-14")
BO2 = Blood_oath.new(tony_t, illuminati, "2015-11-13")
BO3 = Blood_oath.new(tyler, fight_club, "1999-05-27")
BO4 = Blood_oath.new(ralph, dog_lovers, "2019-01-13")
BO5 = Blood_oath.new(toby, illuminati, "1991-12-01")
BO6 = Blood_oath.new(peter, dog_lovers, "2016-01-13")
BO7 = Blood_oath.new(susan, illuminati, "1985-03-13")
BO8 = Blood_oath.new(tommy, fight_club, "1999-04-23")
BO9 = Blood_oath.new(edmund, cat_lovers, "2014-09-10")
BO10 = Blood_oath.new(manny_m ,cat_lovers, "2018-02-28")
BO11 = Blood_oath.new(toby, science_angels, "2004-12-21")
BO12 = Blood_oath.new(liz, cat_lovers, "2011-03-19")
BO13 = Blood_oath.new(walter,dog_lovers, "2019-05-04")
BO14 = Blood_oath.new(susan ,science_angels, "2003-01-28")
BO15 = Blood_oath.new(walter,illuminati, "2006-06-06")
BO16 = Blood_oath.new(jack, fight_club, "1999-04-23")
BO17 = Blood_oath.new(peter, fight_club, "2000-01-13")
BO18 = Blood_oath.new(susan, dog_lovers, "2013-09-02")
BO19 = Blood_oath.new(liz, science_angels, "2003-03-29")
BO20 = Blood_oath.new(walter, science_angels, "2002-03-29")
BO21 = Blood_oath.new(nancy, dog_lovers, "2019-06-11")
BO22 = Blood_oath.new(walter, dog_lovers, "2018-11-13")
BO23 = Blood_oath.new(ralph, fight_club, "2003-04-01")
BO24 = Blood_oath.new(nancy, fight_club, "2016-03-29")
BO25 = Blood_oath.new(walter, fight_club, "2020-01-01")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
