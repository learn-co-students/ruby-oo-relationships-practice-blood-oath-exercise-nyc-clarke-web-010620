class Cult 
attr_accessor :name, :location, :founding_year, :slogan
@@all = []

    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.all 
        @@all 
    end

    def recruit_follower(name)
       Bloodoath.new(self, name)
    end

    def cult_population
        Bloodoath.all.count do |name|
            name.follower
        end
    end

    def self.find_by_name(name)
        @@all.select do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        @@all.select do |cult|
            cult.location == location
        end 
    end

    def self.find_by_founding_year(founding_year)
        @@all.select do |cult|
            cult.founding_year == founding_year
        end
    end

    def blood_oaths
        Bloodoath.all.select do |bloodoath|
            bloodoath.cult == self
        end 
    end

    def followers
        self.blood_oaths.map do |y|
            y.follower
        end
    end

    def average_age #returns a Float that is the average age of this cult
        if self.followers.size > 0
        self.followers.reduce(0) {|sum,y|
        sum + y.age}/followers.size
    end
    end

    def my_followers_mottos 
        self.followers.map do |y|
            y.life_motto
        end
    end 

    def self.least_popular #returns the cult instance who has the least amount of followers 
        minimum_members = self.all.min  {|a,b| a.cult_population <=> b.cult_population}.followers.size
        self.all.select do |c| c.cult_population == minimum_members
        end
    end

    def self.most_common_location #returns a string that is the location with the most cults 
        count = {}
        @@all.each do |cult|
        if count.key?(cult.location)
            count[cult.location] += 1 
        else 
            count[cult.location] = 1
        end
end
count.max_by { |k,v| v}
end
end
