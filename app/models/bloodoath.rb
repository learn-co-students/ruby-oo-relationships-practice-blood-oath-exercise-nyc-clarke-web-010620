class Bloodoath
    attr_accessor :initiation_date, :cult, :follower
    @@all = []

    def initialize(cult, follower)
        @cult = cult 
        @follower = follower
        @initiation_date = initiation_date

        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_initiation_date(date)
        matches = @@all.select {|b_o| b_o.initiation_date == date}
        if date.size !=10
            puts "Format is \"YYYY-MM-DD\""
        elsif date.length == 10 && matches.count > 0 
            matches
        else
            puts "No Blood Oathes with that date."
        end
    end


    def self.first_oath #returns the Follower instance for the follower that made the first blood oath
        date = Bloodoath.all.map{|x| x.initiation_date}.map.min{|min,date| min <=> date}
        self.find_by_initiation_date(date)
    end
end
