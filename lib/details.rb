class Details
  #this should be all that is needed But I Have no idea.
  attr_accessor :url, :id, :name, :english_name, :dimension, :gravity, :density, :moons, 
  :is_planet, :discovered_by, :discovery_date, :alternative_name, :around_planet

  @@all = []

  def initialize(information)
    self.name = information[:name]
    self.url = information[:url]
    self.id = information[:id]
    self.english_name = information[:englishName]
    self.dimension = information[:dimension]
    self.gravity = information[:gravity]
    self.density = information[:density]
    self.moons = information[:moons]
    self.is_planet = information[:isPlanet]
    self.discovered_by = information[:discoveredBy]
    self.discovery_date = information[:discoveryDate]
    self.alternative_name = information[:alternativeName]
    self.around_planet = information[:aroundPlanet]

    @@all << self

   # binding.pry
  end

 #binding.pry

  def self.all
    @@all
  end
#binding.pry
end