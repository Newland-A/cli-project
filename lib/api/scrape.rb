
class Scraper
  RELATIVE_URL = 'https://science.nasa.gov'
  PLANETS_URL = 'https://science.nasa.gov/solar-system'

  def self.scrape_planets
    solar_system = open(PLANETS_URL)
    parsed_info = Nokogiri::HTML(solar_system)
    
    doc.css("li.category-page__member").each do | character |
            
      name = character.css('a').text.strip
      url = character.css('a').attr('href').value
      Character.new(name, url)
  end
    

  binding.pry
  end

end
# def self.retrieve_planets
    #  response = RestClient.get('https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&select=pl_hostname,ra,dec&order=dec&format=ascii')
    #  response = RestClient.get('https://api.nasa.gov/techtransfer/patent/?engine&api_key=DEMO_KEY')
    # response = RestClient.get('https://api.le-systeme-solaire.net/rest/bodies/{id}')
    # planet_hash = JSON.parse(response.body, symbolize_names:true)
   
    #  planets_array = planet_hash[:results]#[:name]
    #  binding.pry
    # planets_info = planets_array.collect { |planet| Planets.new(planet)}
    
    # binding.pry
  # end

  # def retrieve_planet_info
  #   response = RestClient.get('https://api.le-systeme-solaire.net/rest/bodies/')
  #   planet_info_hash = JSON.parse(response.body, symbolize_names:true)
  #   planet_info_array = planet_info_hash[:bodies]

  #   planets_info = planet_info_array.collect { |details| Details.new(details)}

  # end

  # def parse
  #   response = RestClient.get(info.url)
  #   info_hash = JSON.parse(response.body, symbolize_names:true)
  #   info.id = planet_hash[:id]
  #   info.name = planet_hash[:name] 
  #   info.english_name = planet_hash[:englishName]
  #   info.dimension = planet_hash[:dimension]
  #   info.gravity = planet_hash[:gravity]
  #   info.density = planet_hash[:density]
  #   info.moons = planet_hash[:moons]
  #   info.is_planet = planet_hash[:isPlanet]
  #   info.discovered_by = planet_hash[:discoveredBy]
  #   info.discovery_date = planet_hash[:discoveryDate]
  #   info.alternative_name = planet_hash[:alternativeName]
  #   info.around_planet = planet_hash[:aroundPlanet][:planet]
  #  # binding.pry
  # end