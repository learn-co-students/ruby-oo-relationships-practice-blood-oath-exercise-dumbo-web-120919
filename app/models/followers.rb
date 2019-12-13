class Follower

    attr_reader :name, :age, :life_motto
    attr_accessor :cults 

    @@all = []

    def initialize(name, age, life_motto, cults)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = cults 

        @@all << self
    end

    def self.all
        @@all
    end

    def cults_of_follower
        cults = []
        cults << self.cults
    end
end