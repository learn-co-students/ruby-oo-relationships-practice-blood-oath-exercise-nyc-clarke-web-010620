class Follower
    @@all = []
    

    def initialize(name,age,life_motto)
    @name = name 
    @age = age 
    @life_motto = life_motto
    @@all << self
    end 
    
    attr_reader :name
    attr_accessor :age, :life_motto, :cults, :blood_oaths


    def join_cult(cult)
        if follower.age < self.minimum_age
            p "Recruit does not meet the mandatory age requirement!"
        elsif !self.cults.include?(cult)
            puts "What is the initiation date? Format:YYYY-MM-DD"
            date = gets.chomp
            Blood_oath.new(self,cult,date) 
        else
            p "#{self.name} is already a member of #{cult}!" 
        end 
    end

    def blood_oaths
        Blood_oath.all.select do |blood_oath|
        blood_oath.follower == self
        end
    end

    def cults
        self.blood_oaths.map do |blood_oath|
        blood_oath.cult
        end
    end

    def self.all
        @@all 
    end 

    def self.of_a_certain_age(age)
        @@all.select{|follower| follower.age >= age} 
    end

    def my_cult_slogans
        self.cults.map{|cult| cult.slogan} 
    end 
    
    def number_of_cults
        self.cults.length
    end
    
    def fellow_cult_members
        f_c_m = self.cults.map{|cult| cult.followers}.flatten.uniq
        f_c_m.delete(self); 
        f_c_m #<---return fcm (fellow cult members)  
    end 

    def self.most_cults
        most_active = @@all.max {|a,b| a.number_of_cults <=> b.number_of_cults}
        "#{most_active.name} is the most active Follower and is in #{most_active.number_of_cults} cults!"
    end 
    
    def self.top_ten
        @@all.sort {|a,b| b.number_of_cults <=> a.number_of_cults}.take(10)
    end
end