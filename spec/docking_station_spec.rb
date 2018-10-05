require 'docking_station'

describe DockingStation  do

  it 'responds to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'responds to a dock method with one argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'responds to method bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike =Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  it 'releases a working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(bike).to be_working
  end

end
