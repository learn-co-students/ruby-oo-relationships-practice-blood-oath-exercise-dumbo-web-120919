class BloodOath

    attr_reader :initiation_date, :cult, :follower
    @@all = []

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.first_oath
        first_oath = @@all.min_by do |bloodoath_instance|
            bloodoath_instance.initiation_date
        end
        first_oath.follower
    end

    def self.all
        @@all
    end
end