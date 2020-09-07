class Planets
  #this should be all that is needed But I Have no idea.
  attr_accessor :url, :id, :name, :english_name, :dimension, :gravity, :density, :moons, 
  :is_planet, :discovered_by, :discovery_date, :alternative_name, :around_planet

  @@all = []

  def initialize(information)
    self.name = information[:name]
    self.url = information[:url]
    self.id = information[:id]
    self.english_name = information[:english_name]
    self.dimension = information[:dimension]
    self.gravity = information[:gravity]
    self.density = information[:density]
    self.moons = information[:moons]
    self.is_planet = information[:is_planet]
    self.discovered_by = information[:discovered_by]
    self.discovery_date = information[:discovery_date]
    self.alternative_name = information[:alternative_name]
    self.around_planet = information[:around_planet]

    @@all << self
    
    binding.pry
  end

# binding.pry

  def self.all
    @@all
  end

end