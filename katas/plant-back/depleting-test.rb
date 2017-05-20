class Depleting

  def initialize
    aquire_food_by
  end

  def option_todo
    print 'What will you do now?'
    print 'Hunt [h], Gather [g]'
    print 'Eat [e], Patrol [p]'
    print 'Stare at the horizon [s]'
  end

  def aquire_food_by
    puts 'Would you like to [hunt] or [gather]?'
    hunt_or_gather
  end

  def hunt_or_gather
    #option = gets.chomp
    #puts 'You would like to ' + option +'.'
    option = 'hunt'
    return 'You would like to ' + option +'.'
  end

end

#Depleting.new