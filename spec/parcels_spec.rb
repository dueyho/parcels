require 'rspec'
require 'parcels'

describe Parcel do
  it "initializes a parcel with length, width, height and weight arguments" do
    test_parcel = Parcel.new(4,4,4,4)
    test_parcel.should be_an_instance_of Parcel
  end
  it "displays the volume" do
    test_parcel = Parcel.new(4,4,4,4)
    test_parcel.volume. should eq 64
  end
  it "calculates and displays cost to ship" do
    test_parcel = Parcel.new(4,4,4,4)
    test_parcel.cost_to_ship. should eq 25.6
  end
end
