class Cult
    attr_reader :name, :location, :founding_year, :slogan
    
    @@all = []


    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new("today", self, follower)
    end

    def cult_population
       bos =  BloodOath.all.select do |blood_oath|
            blood_oath.cult == self
        end
        
        bos.length
    end

    def self.find_by_name(name)
        
        self.all.find do |cult_instance|
            cult_instance.name == name
        end
    end

    def self.find_by_location (location)
        
        self.all.select do |cult_location|
            cult_location.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end



end