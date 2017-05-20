class Shift
  def pod
    pods_priority.first
  end

  private

  def pods_priority
    raise NotImplementedError, 'Inheriting classes should implement pods_priority'
  end

  def most_important
    puts 'Most Important'
  end

  def less_important
    puts 'Less Important'
  end
end
