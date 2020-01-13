require 'pry'

class BloodOath

    attr_accessor :cult, :follower, :initialization_date 

    @@all = []

    def initialize(cult, follower, initialization_date)
        @cult = cult
        @follower = follower
        @initialization_date = initialization_date
        @@all << self

end

def self.all
    @@all
end

def initiation_date
    return self.initialization_date
end
 def self.first_oath
     self.all[0].follower

 end





end
# binding.pry


# BloodOath

# BloodOath#initiation_date
# returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
# BloodOath.all
# returns an Array of all the blood oaths