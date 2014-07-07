require 'bike'

describe Bike do 

	let(:nagamura) { Bike.new }
	let(:broken_bike) { Bike.new.break! }

	it 'should not be broken when created' do
		nagamura = Bike.new
		expect(nagamura.broken?).to_be false	
	end

	it 'can be broken' do
		nagamura = Bike.new
		nagamura.break!
		expect(nagamura.broken?).to_be true
	end 

	it 'can be fixed' do
		broken_bike.fix!
		expect(broken_bike.broken?).to_be false 
	end

end