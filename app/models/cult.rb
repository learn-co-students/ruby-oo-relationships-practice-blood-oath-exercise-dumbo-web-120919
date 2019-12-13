class Cult
    attr_accessor :cult_population
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []
    @@followers = []

    def initialize(name, location, founding_year, slogan, cult_population)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_population = cult_population
        @@all << self
    end

    def recruit_follower(follower)
        follower.cults << self
        @cult_population += 1
        @@followers << follower
    end

    # def cult_population
    #     @@followers.select{|follower| follower.cults == self}.size
    # end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.select{|cult| cult.founding_year == year}
    end

    def self.all
        @@all
    end

end