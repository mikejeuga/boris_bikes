require "Bike"

describe Bike do
  it "respond to is working function" do
    expect(subject).to respond_to(:is_working?)
  end
end
