class Owner
  # code goes here
  attr_writer :name, :species
  #attr_reader :species
  
  @@all = []
  
  def initialize(species = "human")
    @species = species
    @@all << self
  end
  
  
  
  def say_species
    puts @species
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
  
end