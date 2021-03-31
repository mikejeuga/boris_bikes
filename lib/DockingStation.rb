# require_relative "Bike"

class DockingStation
  attr_reader :dock_station

  def initialize
    @dock_station = []
  end

  def release_bike
    fail "No bikes available" if @dock_station.empty?
    @dock_station.pop
  end

  def docking(bike)
    fail "The docking station is full" if @dock_station.length > 19
    @dock_station << bike
  end
end
