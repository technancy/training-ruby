class SenarioAPriority < Shift
  private

  def pods_priority
    [less_important, most_important].compact
  end

end