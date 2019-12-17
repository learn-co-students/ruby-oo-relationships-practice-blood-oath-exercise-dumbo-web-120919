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

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
            BloodOath.new("2019-12-16", self, follower)
        else
            puts "You're too young for this cult!"
        end
    end

    # helper method to get all bloodoaths for this cult
    def blood_oaths
        BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.cult == self
        end
    end

    # helper method to get all followers for this cult 
    def followers
        self.blood_oaths.map{|bloodoath_instance| bloodoath_instance.follower}.uniq
    end

    def cult_population
        #Cult -< BloodOath >- Follower
        #1. for the cult, get all the bloodoaths that belong to this cult
        bos = BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.cult == self
        end
        #2. from those bloodoaths, figure out which followers they belong to
        bos.length
    end

    def average_age
        # get total age
        total_age = self.followers.sum do |follower|
            follower.age
        end
        # total age.to_f / cult population
        total_age.to_f / cult_population
    end

    def my_followers_mottos
        self.followers.each do |follower|
            puts follower.life_motto
        end
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.select{|cult| cult.founding_year == year}
    end

    def self.least_popular
        @@all.min_by do |cult_instance|
            cult_instance.cult_population
        end
    end

    def self.most_common_location
        # create a hash where key is location, 
        # value is the array of cult instances 
        location_hash = self.all.group_by do |cult_instance|
            cult_instance.location
        end
        # create an array to store the max location
        # array's 1st element is location
        # array's 2nd element is array of cult instances
        most_common_location = location_hash.max_by do |location, cults|
            cults.count
        end
        most_common_location[0]
    end

    def self.all
        @@all
    end

end