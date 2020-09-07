
class Api

  def retrieve_planets
    response = RestClient.get('https://api.le-systeme-solaire.net/rest/bodies/')
    planet_info_hash = JSON.parse(response.body, symbolize_names:true)
    planets_array = planet_info_hash[:bodies]

    planets_info = planets_array.collect { |planet| Planets.new(planet)}
    
    binding.pry
  end

  def parse(info)
    planets_info.each do |info|
    response = RestClient.get(info.url)
    planet_hash = JSON.parse(response.body, symbolize_names:true)
    info.id = planet_hash[:id]
    info.name = planet_hash[:name] 
    info.english_name = planet_hash[:english_name]
    info.dimension = planet_hash[:dimension]
    info.gravity = planet_hash[:gravity]
    info.density = planet_hash[:density]
    info.moons = planet_hash[:moons]
    info.is_planet = planet_hash[:is_planet]
    info.discovered_by = planet_hash[:discovered_by]
    info.discovery_date = planet_hash[:discovery_date]
    info.alternative_name = planet_hash[:alternative_name]
    info.around_planet = planet_hash[:around_planet][:planet]
    binding.pry
    end
  end
end