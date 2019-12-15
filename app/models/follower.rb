class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        #finds the cults for each follower instance
        blood_oaths = BloodOath.all.select do |blood_oath|
            blood_oath.follower == self 
        end
        blood_oaths.map do |blood_oath|
            blood_oath.cult 
        end
        #blood_oaths.map(&:cult)
    end

    def join_cult(cult_instance)
        cult_instance.recruit_follower(self)
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end

    def my_cults_slogans
        self.cults.map do |cult|
            cult.slogan 
        end
    end

    def self.most_active
        # method acts upon Follower class to find the follower instance who has joined the most cults
        most_active_array = self.all.sort_by do |follower|
            -follower.cults.length
        end
        most_active[0]
    end

    def self.top_ten
    # returns an Array of followers; they are the ten most active followers
        most_active_array = self.all.sort_by do |follower|
            -follower.cults.length
        end
        most_active_array[0..9]
    end
end


