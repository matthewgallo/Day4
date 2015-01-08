require './car.rb'

class Inventory
	attr_accessor :car_data


	def initialize 
		self.car_data = []
	end

	def add_car *car_list
			

			new_car = Car.new
			new_car.make = hash [:make]
			new_car.color = hash [:color]
			new_car.model = hash [:model] 
			new_car.back_seats = hash [:back_seats]
			new_car.max_speed = hash [:max_speed]
			new_car.vin_number = hash [:vin_number]
			self.car_data.push(new_car)
	end

	def remove_car vin_number
		self.car_data.delete_if do |car|
			car.vin_number == vin_number
		end
	end

	def populate_cars
		puts "Populate your car data"
		hash

end

zach_inventory = Inventory.new
car1 = {
	make: "Porsche",
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seats: 0,
	max_speed: 200,
	vin_number: "123"
}


car2 = {
	make: "Daewoo",
	color: "Brown",
	model: "Nubira",
	back_seats: 4,
	max_speed: 95,
	vin_number: "456"
}

car3 = {
	make: "Ford",
	color: "Blue",
	model: "Fiesta",
	back_seats: 0,
	max_speed: 200,
	vin_number: "789"
}
#SRP 

zach_inventory.add_car(car1)

p zach_inventory.car_data

zach_inventory.remove_car("456")





