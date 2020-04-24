class Zoo
    attr_accessor :location, :name 
     
    @@all = []

def initialize(location, name)
    @location=location
    @name= name 
    @@all << self 
end 

def self.all 
    @@all 
end 

def animals 
    Animal.all.select do |inst| inst.zoo == self end 
end 

def animal_species 
    animals.map do |inst| inst.species end.uniq
end 

def find_by_species(species)
    animals.select do |inst| inst.species == species
    end 
end 

def animal_nickname
    nickname=[]
    animals.each do |inst| nickname << inst.nickname
    end
    nickname
end 

def self.find_by_location(location)
    @@all.select do |inst| inst.location == location 
    end 
end 

end
