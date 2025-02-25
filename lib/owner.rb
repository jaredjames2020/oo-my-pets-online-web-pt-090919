class Owner
  # code goes here
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    new_pet_cat = Cat.new(name, owner = self)
  end
  
  def buy_dog(name)
    new_pet_dog = Dog.new(name, owner = self)
  end
  
  def walk_dogs
    Dog.all.select {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.select {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.select {|dog| dog.mood = "nervous"}
    Cat.all.select {|cat| cat.mood = "nervous"}
    Dog.all.select {|dog| dog.owner = nil}
    Cat.all.select {|cat| cat.owner = nil}
  end   
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end