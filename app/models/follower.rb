class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name,age)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all 
        @@all 
    end

    def cults
        Bloodoath.all.map do |name|
            name.cult
    end
end

    def join_cult(name)
        Bloodoath.new(name,self)
    end

    def Follower.of_a_certain_age(age)
        @@all.select do |cult|
            cult.age >= age
        end
    end

    def my_cults_slogans #prints out all the slogans for this cult 
        self.cult.map do |y|
            y.slogan
        end
    end 

    def number_of_cults
        self.cults.length
    end

    def self.most_active #returns the follower instance who has joined the most cults 
        maximum = @@all.max {|x,y| x.number_of_cults <=> y.number_of_cults}.cults.size
        @@all.select {|z| z.number_of_cults == maximum}
    end 

    def self.top_ten #returns an array of followers that are the top ten most active followers
        @@all.sort {|a,b| b.number_of_cults <=> a.number_of_cults}.take(10)
end
end