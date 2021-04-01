require_relative "Bike"

class DockingStation
  ::DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @dock_station = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @dock_station.pop
  end

  def docking(bike)
    fail "The docking station is full" if full?
    @dock_station << bike
  end

  private

  def full?
    @dock_station.length >= DEFAULT_CAPACITY
  end

  def empty?
    @dock_station.empty?
  end
end
