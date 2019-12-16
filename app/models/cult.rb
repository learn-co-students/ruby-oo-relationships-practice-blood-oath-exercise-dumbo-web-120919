
class Cult
    attr_reader :name, :location, :founding_year, :slogan, :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age

        @@all << self
    end

    def self.all 
        @@all
    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
            BloodOath.new(Time.now.strftime("%Y-%m-%d"), self, follower)
        else
            puts "Sorry, you're too young!"
        end
    end

    def blood_oaths_by_cult
        BloodOath.all.select do |blood_oath|
            blood_oath.cult == self 
        end
    end

    def followers
        blood_oaths_by_cult.map do |blood_oath|
            blood_oath.follower
        end
    end

    def cult_population
        #get all blood oaths that belong to this cult
        self.blood_oaths_by_cult.length  
    end
    
    def self.find_by_name(name)
        self.all.find do |cult_instance|
            cult_instance.name == name
        end   
    end

    def self.find_by_location(location)
        self.all.select do |cult_instance|
            cult_instance.location == location  
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult_instance|
            cult_instance.founding_year == year 
        end
    end
    
    def average_age
        blood_oaths = self.blood_oaths_by_cult
        total_age = blood_oaths.reduce(0) { |sum, blood_oath| sum + blood_oath.follower.age }
        total_age / self.cult_population
    end

    def my_followers_mottos
        self.blood_oaths_by_cult.map do |blood_oath|
            blood_oath.follower.life_motto
        end 
    end

    def self.least_popular
        self.all.min_by do |cult|
            cult.followers.length
        end
    end

    def self.most_common_location
        location_hash = self.all.group_by do |cult|
            cult.location
        end
        most_common_location = location_hash.max_by do |location, cults|
            cults.count 
        end
        most_common_location[0] 
    end


  
end

