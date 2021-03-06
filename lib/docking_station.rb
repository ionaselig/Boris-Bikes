class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize (options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end 

	def bikes
		@bikes
	end 

	def dock(bike)
		bikes << bike
	end 

	def bike_count
		@bikes.count
	end

	def release (bike)
	@bikes.delete(bike)
	end 	

	def full?
	bike_count == @capacity
	end	

end
