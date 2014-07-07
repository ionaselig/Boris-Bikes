require 'docking_station'

describe DockingStation do

	it 'when created' do 
		old_street = DockingStation.new
		expect [old_street.bikes.count].to_eq 0
	end

	it 'can dock a bike' do
		nagamura = Bike.new
		old_street = DockingStation.new
		old_street.dock(nagamura)
		expect(old_street).to eq [nagamura]
		expect(old_street.bikes.count).to_eq 1
	end 

end