require 'bike'

describe Bike do 

	let(:nagamura) { Bike.new }
	let(:broken_bike) { Bike.new.break! }

	it 'should not be broken when created' do
		nagamura = Bike.new
		expect(nagamura.broken?).to be false	
	end

	it 'can be broken' do
		nagamura.break!
		expect(nagamura.broken?).to be true
	end 

	it 'should be able to get fixed' do
		nagamura.break!
		nagamura.fix!
		expect(nagamura.broken?).to be false
	end

end