# encoding: utf-8
class Depleting

  def initialize
    option_todo
  end

  def option_todo
    puts 'What will you do now?'
    puts 'Eat [e], Patrol [p]'
    puts 'Stare at the horizon [s]'
    choice = gets.chomp

    if (choice == 'e')
      puts 'You have no food stored'
      aquire_food_by
    else
      print 'You commence your action'
    end
  end

  def aquire_food_by
    puts 'Would you like to [hunt] or [gather]?'
    hunt_or_gather
  end

  def hunt_or_gather
    option = gets.chomp
    puts 'You commence ' + option +'ing.'
    #option = 'hunt'
    #return 'You would like to ' + option +'.'
    show_world
  end

  def show_world
    puts "          ◌    ::       ◌     "
    puts "  .        ~     /\           "
    puts "  ଽ    Ä    ¥         ¥ ₹     "
    puts "    ₹   ◌    Ä     ¥       ₹  "
    puts "      Ä .....                 "
    puts "Tribe members: #####"
    puts "Food stored  : #######"
    puts "Animal health: ###########"
    puts "Plant health : #####"
    puts "Soil fert    : ##"
  end

end

Depleting.new