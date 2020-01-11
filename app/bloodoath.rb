require 'pry'

class BloodOath

    attr_accessor :cult, :follower, :initialization_date

    @@all = []

    def initialize(cult, follower, initialization_date)
        @cul t = cult
        @follower = follower
        @initialization_date = initialization_date

end

def BloodOath
    @@all
end

binding.pry


# BloodOath

# BloodOath#initiation_date
# returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
# BloodOath.all
# returns an Array of all the blood oaths