require 'pry'
class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
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

    end

    def cult_population
        list_of_followers = Follower.all.select do |cult_instance|
            cult_instance.cults == self
        end
        list_of_followers.count
        binding.pry    
    end
    
    def self.find_by_name(name)
        self.all.find do |cult_instance|
            cult_instance.name == name
        end   
    end
    
    # binding.pry 
end
