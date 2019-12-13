class Follower
    attr_accessor :cults
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age >= age}
    end

    def self.all
        @@all
    end

end

