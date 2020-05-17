class Follower
    def initialize(name, age, life_motto=nil)
        @name = name
        @age = age
        @life_motto = life_motto 
        @@all << self

    end

    @@all = []
 

    attr_reader :name
    attr_accessor :age, :life_motto

    def join_cult(cult)
        Bloodoath.new(self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end

    end

    def oaths
        Bloodoath.all.select do |oath|
            oath.follower == self
        end
    end

    def cults
        self.oaths.map do |oath|
            oath.cult
        end
    end

    def my_cults_slogans # prints out all of the slogans for this follower's cults
        self.cults.each do |cult|
            puts cult.slogan
        end
    end

    def self.most_active # returns the Follower instance who has joined the most cults
        self.all.max_by do |follower|
            follower.cults.count
        end

    end

    def self.top_ten # return/s an Array of followers; they are the ten most active followers
        sorted = self.all.sort do |follower|
            follower.cults.count
        end
        sorted[0..9]
    end

end
