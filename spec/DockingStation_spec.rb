require "DockingStation"

describe DockingStation do
  it "should respond to release bike" do
    expect(subject).to respond_to(:release_bike)
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.docking(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end

  it "should be working bike" do
    bike = Bike.new
    subject.docking(bike)

    expect(subject.release_bike).to respond_to(:is_working?)
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  describe "#dock" do
    it "should receive a bike" do
      bike = Bike.new
      expect(subject.docking(bike)).to eq([bike])
    end

    it "raises an error when there is more than 20 bikes at the docking station." do
      subject.docking(Bike.new)
      expect { ::DEFAULT_CAPACITY.times { subject.docking(Bike.new) } }.to raise_error("The docking station is full")
    end
  end

  describe "#initialize" do
    it "should create a constant called capacity when initialized" do
      expect(subject.capacity).to eq (subject.capacity)
    end
  end

  it "should not release broken bikes" do
    bike = Bike.new
    bike.report_broken
    subject.docking(bike)
    expect(subject.release_bike).to raise_error("No bikes available")
  end
end
