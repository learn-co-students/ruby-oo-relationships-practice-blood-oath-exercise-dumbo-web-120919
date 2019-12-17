class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def join_cult(cult)
        if self.age >= cult.minimum_age
            BloodOath.new("2019-12-16", cult, self)
        else
            puts "You're too young for this cult!"
        end
    end

    # helper method: find all the bloodoaths for this follower
    def blood_oaths
        BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.follower == self
        end
    end
    
    def cults
        self.blood_oaths.map(&:cult)
        # the above line is same as:
        # self.blood_oaths.map{|bloodoath_instance| bloodoath_instance.cult} 
    end

    def my_cults_slogans
        self.cults.each do |cult|
            puts cult.slogan
        end
    end

    def self.most_active
        @@all.max_by do |follower|
            follower.cult.count
        end
    end

    def self.top_ten
        # sort followers by num of cults they joined
        # sort_by will sort from lowest to highest
        sorted_followers = self.all.sort_by do |follower|
            follower.cults.count
        end
        # sort from highest to lowest
        sorted_followers = sorted_followers.reverse
        sorted_followers[0..9]
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age >= age}
    end

    def self.all
        @@all
    end

end

