class BloodOath
    attr_reader :cult, :follower, :initiation_date

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

    # def self.first_oath

    #     oath_sort = self.all.sort_by do |oath|
    #         Time.parse(oath.initiation_date)
    #     end
    #     oath_sort[0].follower

    # end
end 
