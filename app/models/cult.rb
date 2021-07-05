class Cult

    attr_reader :name, :founding_year
    attr_accessor :location, :slogan, :cult_population, :followers

    @@all = []

    # INITIALIZATION #

    def initialize(name, location, founding_year, slogan, cult_population=0)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_population = cult_population
        @@all << self 
        @followers = []
    end

    # END INITIALIZATION #

    # INSTANCE METHODS #

    def recruit_follower(follower, init_date)
        BloodOath.new(self, follower, init_date)
        @followers << follower
        self.cult_population += 1
        return nil
    end

    # END INSTANCE METHODS #

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    def self.find_by_name(cult_name)    # WORKS #
        @@all.select do |cult|
            cult.name == cult_name
        end
    end

    def self.find_by_location(cult_location)    # WORKS #
        @@all.select do |cult|
            cult.location == cult_location
        end
    end

    def self.find_by_founding_year(founding_year)   # WORKS #
        @@all.select do |cult|
            cult.founding_year == founding_year
        end
    end

    # END CLASS METHODS #

end
