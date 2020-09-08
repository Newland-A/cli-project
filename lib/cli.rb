
class CLI

  def greeting
    puts "Hello, What is your name?"
    print "> "
    name = $stdin.gets.chomp
    puts "Hello #{name}, I hope you find the answers here!"
    API.parse
  end

  def list_planets
    #This gives all of the planets an index
    Planets.all.each.with_index(1) {| planet, i | puts "#{i}. #{planet.name}"}
  end
  
  def start
    greeting
    puts "Welcome to Outer Space, #{name}!"
    puts "What planet are you researching?"
    puts "If you would like information on "
    puts 
   
    puts 
    puts 
    puts 
    puts 
    puts 
    puts 
    lists_planets
    print "> "
      info = $stdin.gets.chomp
      puts 
  end
 #binding.pry 

  def planets_list(information)
  #calls on the API class to retrieve the information and puts the details of each planet in the order that they are here.
    API.parse(information)

  #lists the name of the planet that the user asked for
    puts "Here are the details for #{information.name}:"
  
    #then lists the elements
    puts "#{information.id}"
    puts "#{information.url}"
    puts "#{information.english_name}"
    puts "#{information.dimension}"
    puts "#{information.gravity}"
    puts "#{information.density}"
    puts "#{information.moons}"
    puts "#{information.is_planet}"
    puts "#{information.discovered_by}"
    puts "#{information.discovery_date}"
    puts "#{information.alternative_name}"
    puts "#{information.around_planet}"
  
    # :url, :id, :name, :english_name, :dimension, :gravity, 
  # :density, :moons, :is_planet, :discovered_by, :discovery_date, 
  # :alternative_name, :around_planet
  end

end