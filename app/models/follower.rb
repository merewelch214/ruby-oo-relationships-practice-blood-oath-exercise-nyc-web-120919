class Follower
    
    attr_reader :name, :age, :life_motto
    attr_accessor :cult
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end 

    def cults
        Cult.all.select {|cult| cult.follower == self}
    end 

    def blood_oath
        BloodOath.all.select do |oath|
            oath.follower == self 
        end 
    end 

    def join_cult(cult)
        BloodOath.new(cult, self)
    end 

    def self.all
        @@all
    end 

    def self.of_a_certain_age(age)
        Follower.all.select {|follower| follower.age >= age}
    end 



end 