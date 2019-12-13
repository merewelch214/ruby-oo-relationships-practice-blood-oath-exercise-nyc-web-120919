class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :follower, :blood_oath
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end 

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end 

    def blood_oaths
        BloodOath.all.select do |oath|
            oath.cult == self 
        end 
    end 

    def cult_population
        BloodOath.all.map {|oath| oath.cult == self}.length
    end 

    def self.all
        @@all
    end 

    def self.find_by_name(name_string)
        @@all.select {|cult| cult.name == name_string}
    end 

    def find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end 

    def find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end 


end 