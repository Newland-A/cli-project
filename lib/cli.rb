class Cli

#Intro
  def greeting(name)
    puts 'Hello, What is your name?'
    name = gets.strip
    # puts "Welcome, #{name}. What information would you like to know:"
  end
  
  def start  
  
    input = ''

    puts "To get information, please read the following:"
    puts "If your looking for information on the url: enter 'url' "   
    puts "If your looking for information on the id: enter 'id' " 
    puts "If your looking for information on the name: enter 'name' " 
    puts "If your looking for information on the english name: enter 'english name' "  
    puts "If your looking for information on the dimensions: enter 'dimensions' "   
    puts "If your looking for information on the gravity: enter 'gravity' "   
    puts "If your looking for information on the density: enter 'density' "   
    puts "If your looking for information on the moons: enter 'moons' "   
    puts "If your looking for information on if it is a planet: enter 'is planet' " 
    puts "If your looking for information on who it was discover by: enter 'discovered by' " 
    puts "If your looking for information on when it was discovered: enter 'discovery date' "  
    puts "If your looking for information on its alternative name: enter 'alternative name"  
    puts "If your looking for information on what's around the planet: enter 'around planet' "

    input = gets.chomp

    while input != 'exit'
      puts 'What type of information are you looking for #{name}?'
      case input 
        when 'url'

        when 'id'

        when 'name'

        when ''

        when ''

        when ''

        when ''

        when ''

        when ''

        else 
        'Your input is invalid, Please try again:'

      end
  end
'What is Outer Space?'
'Do you know?'
'What type of information are you looking for?'
info = gets.chomp
end
