class Planets
  #this should be all that is needed But I Have no idea.
  attr_accessor :url, :id, :name, :english_name, :dimension, :gravity, :density, :moons, 
  :is_planet, :discovered_by, :discovery_date, :alternative_name, :around_planet

  @@all = []

  def initialize(information)
    self.name = information[:name]
    self.url = information[:url]
    self.id = information[:id]
    self.dimension = information[:dimension]
    @@all << self
  end

binding.pry

  def self.all
    @@all
  end

end