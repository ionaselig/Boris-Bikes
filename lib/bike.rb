class Bike 

	def initialize
		@broken = false
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
		self
	end 

	def fix!
		@fixed = true
		self
	end

end
