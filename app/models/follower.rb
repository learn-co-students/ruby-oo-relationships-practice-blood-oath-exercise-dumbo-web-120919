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
        bos = BloodOath.all.select do |blood_oath|
            blood_oath.follower == self
        end

        # bos.map do |blood_oath|
        #     blood_oath.cult
        # end
        bos.map(&:cult)
    end
end
