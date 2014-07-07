require 'docking_station'

describe DockingStation do
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	it 'docking station to be empty when created' do 
		old_street = DockingStation.new
		expect(old_street.bikes.count).to eq 0
	end

	it "should accept a bike" do
    	nagamura = Bike.new
    	old_street = DockingStation.new
    	expect(old_street.bikes.count).to eq(0)	
    	old_street.dock(nagamura)    
    	expect(old_street.bikes.count).to eq(1)
  	end

	it 'can dock a bike' do
		nagamura = Bike.new
		old_street = DockingStation.new
		# old_street.dock(nagamura) 
		# expect(old_street).to eq('nagamura')
		old_street.dock(nagamura)	
		expect(old_street.bikes.count).to eq(1) 
	end 

	it 'can release a bike' do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0) 
	end 

	it "should know when it's full" do
		expect(station).not_to be_full
		20.times { station.dock(Bike.new)}
		expect(station).to be_full
	end

end