class Planets
  #this should be all that is needed But I Have no idea.
  # attr_accessor :url, :id, :name, :english_name, :dimension, :gravity, :density, :moons, 
  # :is_planet, :discovered_by, :discovery_date, :alternative_name, :around_planet
  attr_accessor :name

  @@all = []

  def initialize(planet)
    self.name = planet[:name]
    
    @@all << self

    #binding.pry
  end

 #binding.pry

  def self.all
    @@all
  end

end