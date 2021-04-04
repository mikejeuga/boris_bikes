require "Bike"

describe Bike do
  it "respond to is working function" do
    expect(subject).to respond_to(:is_working?)
  end

  it "can be reported broken" do
    subject.report_broken
    expect(subject).to be_broken
  end
end
