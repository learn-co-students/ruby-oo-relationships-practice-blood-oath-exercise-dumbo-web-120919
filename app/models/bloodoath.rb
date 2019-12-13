class BloodOath

    attr_reader :initiation_date
    @@all = []

    def initialize(initiation_date)
        @initiation_date = initiation_date
        @@all << self
    end

end