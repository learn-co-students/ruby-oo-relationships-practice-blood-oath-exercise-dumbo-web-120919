class BloodOath
    attr_reader :initiation_date, :cult, :follower

    @@all = []

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
     
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.first_oath
        sorted_oaths_array = self.all.sort_by do |bloodoath|
            bloodoath.initiation_date
        end
        sorted_oaths_array[0]
    end
end

