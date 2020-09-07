class Planets
  
  attr_accessor :url, :id, :name, :english_name, :dimension, :gravity, :density, :moons, :is_planet, :discovered_by, :discovery_date, :alternative_name, :around_planet


  @@all = []

  def initialize(information)
    self.name = information[:name]
    self.url = information[:url]
  end

  def self.all
    @@all
  end

end