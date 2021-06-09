require "pry"
require_relative '../config/environment'

class Owner
  attr_reader :name, :species

  @@all = []
  @@count = 0
 # @@reset_all 
  
def initialize (name)
  @name = name 
  @species = "human"
  @@all << self # Self = instance of Owner Class (self = owner)
  @@count += 1
end

def say_species 
p "I am a #{self.species}."
end

def self.all
@@all

end 
def self.count 
  @@count
end

def self.reset_all
@@all = []
@@count = 0
end

def cats
Cat.all.select do |name| 
  name.owner == self
end 
end 

def dogs 
  Dog.all.select do |name| 
    name.owner == self
  end
end
 #Creating an Instance Method by using .new, initializing name and owner

def buy_cat (name)        
  Cat.new(name, self)     
end


def buy_dog (name)        
  Dog.new(name, self)     
end

def walk_dogs 
#dog = Dog.new(@owner, "happy")
self.dogs.each {|dog| dog.mood = "happy"}
end

def feed_cats
self.cats.each {|cats| cats.mood = "happy"}
end

def all_pets
pets = dogs + cats
end

def sell_pets
self.all_pets.each {|o| o.mood = "nervous" } #each acts on every element in an array
self.all_pets.each {|o| o.owner = nil}
end

def list_pets
#dogs = dogs.count
#cats = cats.count
p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end