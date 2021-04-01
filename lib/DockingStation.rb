require_relative "Bike"

class DockingStation
  attr_reader :dock_station

  def initialize
    @dock_station = []
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
    @dock_station.length > 19
  end

  def empty?
    @dock_station.empty?
  end
end
