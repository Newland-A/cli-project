class CLI
  def start

  end

  def greeting
  
  end

  def inner_planets

  end

  def outer_planets
end


# class CLI
 
#   def start
#     greeting
#     puts "Welcome to Outer Space!"
#     puts "What planet are you researching?"
#     puts "If you would like information on the planets?"
#     puts "Please enter: 'planets' "
#     puts "To exit: type 'exit' "
    
#     print "> "
#     input = $stdin.gets.chomp

#     if input = 'planets'
#       API.retrieve_planets
#       list_planets
#         puts "If you would like to see more details about the planets"
#         puts 'please enter the name of the planet, you would like more information.'
#           print "> "
#           input_details = $stdin.gets.chomp
#           API.parse
#           case details
#           when input_details = ''
#             API.parse[:moons]
#     elsif input = ' '
#        puts "Input is invalid please try again."
#       API.retrieve_planets
#       list_planets
#     else
#       exit
#     end
#   end

#   def greeting
#     puts "Hello, What is your name?"
#     print "> "
#     name = $stdin.gets.chomp
#     puts "Hello #{name}, I hope you find the answers here!"
#    # API.parse
    
#   end

#   def list_planets
#     #This gives all of the planets an index
#     Planets.all.each.with_index(1) {| planet, i | puts "#{i}. #{planet.name}"}
#   end
#  #binding.pry 

#   def planets_list(information)
#   #calls on the API class to retrieve the information and puts the details of each planet in the order that they are here.
#     API.parse(information)

#   #lists the name of the planet that the user asked for
#     puts "Here are the details for #{information.name}:"
  
#     #then lists the elements
#     puts "#{information.id}"
#     puts "#{information.url}"
#     puts "#{information.english_name}"
#     puts "#{information.dimension}"
#     puts "#{information.gravity}"
#     puts "#{information.density}"
#     puts "#{information.moons}"
#     puts "#{information.is_planet}"
#     puts "#{information.discovered_by}"
#     puts "#{information.discovery_date}"
#     puts "#{information.alternative_name}"
#     puts "#{information.around_planet}"
  
#     # :url, :id, :name, :english_name, :dimension, :gravity, 
#   # :density, :moons, :is_planet, :discovered_by, :discovery_date, 
#   # :alternative_name, :around_planet
#   end

# end