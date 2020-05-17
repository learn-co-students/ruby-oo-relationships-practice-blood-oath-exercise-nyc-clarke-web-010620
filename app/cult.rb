class Cult
    def initialize(name, location, founding_year, slogan = nil)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    @@all = []

    attr_accessor :location, :slogan
    attr_reader :name, :founding_year

    def recruit_follower(name)
        Bloodoath.new(name, self)
    end

    def cult_population
        self.followers.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(loc)
        @@all.select do |cult|
            cult.location == loc
        end
    end

    def self.find_by_founding_year(year)
        @@all.select do |cult|
            cult.founding_year == year
        end
    end

    def oaths
        Bloodoath.all.select do |oath|
            oath.cult == self
        end 
    end

    def followers
        self.oaths.map do |oath|
            oath.follower
        end

    end

    def average_age
        ages = self.followers.map do |follower|
            follower.age 
        end
        total = ages.reduce{|sum, x| sum + x}
        total / ages.count
    end

    def my_followers_mottos
        self.followers.each do |follower|
            puts follower.life_motto
        end
    end

    
    def self.least_popular
        least_cults = []
        @@all.each do |cult|
            if least_cults == []  #add to least_cult for 1st cult
                least_cults << cult
            elsif cult.cult_population < least_cults[0].cult_population #if cult is smaller than least, then replace
                least_cults = [cult]
            elsif cult.cult_population == least_cults[0].cult_population # if cult is same, then add to array
                least_cults << cult
            end
        end
        least_cults
    end

    def self.most_common_location
        count = {}
        self.all.each do |cult|
            if count.key?(cult.location)
                count[cult.location] += 1
            else 
                count[cult.location] = 1
            end
        end
        count.max_by{|k, v| v}
    end

    


end


