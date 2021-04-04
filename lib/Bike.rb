class Bike
  attr_reader :bike

  def is_working?
    return true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end
