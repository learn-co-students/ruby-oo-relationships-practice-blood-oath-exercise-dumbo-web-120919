class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    # INITIALIZATION #

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    # END INITIALIZATION #

    # ACTIVE METHODS #

    def find_bloodoath  # WORKS #
        BloodOath.all.select do |oath|
            oath.follower == self
        end
    end

    def cults   # WORKS #
        find_bloodoath.map do |oath|
            oath.cult
        end
    end

    def join_cult(cult, init_date)  # WORKS #
        BloodOath.new(cult, self, init_date)
        cult.followers << self
        cult.cult_population += 1
    end

    # END ACTIVE METHODS #

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    def self.of_a_certain_age(certain_age)  # WORKS #
        returned_followers = []
        @@all.each do |follower|
            if follower.age >= certain_age
                returned_followers << follower
            end
        end
        returned_followers
    end

    # END CLASS METHODS #

end
