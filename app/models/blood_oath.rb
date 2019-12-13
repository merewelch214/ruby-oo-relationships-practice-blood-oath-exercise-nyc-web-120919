class BloodOath

    attr_accessor :initiation_date, :cult, :follower
    
    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @@all << self
        @initiation_date = Time.now.strftime("%Y-%m-%d")
    end 

    def self.all
        @@all
    end 

end 