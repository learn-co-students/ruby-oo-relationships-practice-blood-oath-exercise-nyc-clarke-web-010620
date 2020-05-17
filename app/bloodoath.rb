class Bloodoath
    
    def initialize (follower, cult, date=nil)
        @follower = follower
        @cult = cult
        @initiation_date = date
        @@all << self
    end

    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def self.all
        @@all
    end


end
