
class CLI

  def run
    puts "Welcome to the Star Wars Character Database!"
    puts "Please choose a character to see more information:"
    API.parse
    list_planet
    menu
  end

  def list_planets
    Planets.all.each.with_index(1) {| planet, i | puts "#{i}. #{planet.name}"}
  end

  def main
    puts "Please select a number to get the details."
    input = gets.chomp
    if !input.to_i.between?(1, Planets.all.count)
        puts "Planet information not found, Please try again"
        list_planets
        main
    else
        planet = planets.all[input.to_i-1]
        planet_details(planet)
    end

    puts "Would you like to see another planet?"
    puts "Please enter Yes or No"

    different_planet = gets.strip.downcase

    if different_planet == "yes"
        list_planets
        main
    elsif different_planet == "no"
        puts "Your space ship is heading home!"
        exit
    else
        puts "A black hole sucked you in and your lost. Please try again."
        list_planets
        main
    end
  end

  def planet_details(information)
    API.parse(information)
    puts "Here are the details for #{information.name}:"
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
#Intro
#   def greeting(name)
#     puts 'Hello, Can I please have a name so I can speak with you properly?'
#      name = gets.strip
#     puts "Welcome, #{name}. What information would you like to know:"
#     binding.pry
#   end
  
#   def start  
  
#     input = ''

#     puts "To get information, please read the following:"
#     puts "If your looking for information on the url: enter 'url' "   
#     puts "If your looking for information on the id: enter 'id' " 
#     puts "If your looking for information on the name: enter 'name' " 
#     puts "If your looking for information on the english name: enter 'english name' "  
#     puts "If your looking for information on the dimensions: enter 'dimensions' "   
#     puts "If your looking for information on the gravity: enter 'gravity' "   
#     puts "If your looking for information on the density: enter 'density' "   
#     puts "If your looking for information on the moons: enter 'moons' "   
#     puts "If your looking for information on if it is a planet: enter 'is planet' " 
#     puts "If your looking for information on who it was discover by: enter 'discovered by' " 
#     puts "If your looking for information on when it was discovered: enter 'discovery date' "  
#     puts "If your looking for information on its alternative name: enter 'alternative name"  
#     puts "If your looking for information on what's around the planet: enter 'around planet' "
#     puts "To quite, type 'exit'."
#     puts "What would you like to retrieve?"

#     input = gets.chomp

#     while input != 'exit'
#       puts 'What type of information are you looking for #{greeting.name}?'
     
#       case input 
#         when 'url'
          
#         when 'id'

#         when 'name'

#         when 'english name'

#         when 'dimensions'

#         when 'gravity'

#         when 'density'

#         when 'moons'

#         when 'is planet'

#         else 
#         'Your input is invalid, Please try again:'
#         start

#       end
#     end
#   end

# end
