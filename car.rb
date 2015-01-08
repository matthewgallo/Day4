class Car
	# Setters
	# attr_writer :make
	# Getters
	# attr_reader :make

	# @color
	# def color= value
	# 	@color = value
	# 	@color
	# end

	# def color
	# 	@color
	# end
	# Do it this way!!!!
	attr_accessor :make
	attr_accessor :color
	attr_accessor :model
	attr_accessor :back_seats
	attr_accessor :max_speed
	attr_accessor :vin_number
	@@list_of_cars = []


	# Object/Instance Method
	# Encapsulation
	def initialize
		self.make = "Ford"
		self.model = "Focus"
		self.color = "White"
		self.back_seats = 3
		self.max_speed = 140
		Car.list_of_cars.push(self)
	end


	def display_information
		puts "#{self.make} #{self.model} #{self.color} #{self.back_seats} #{self.max_speed}"
	end
	# Class method (self. makes it a class method)
	def self.display_all_cars
	end

	def self.list_of_cars
		@@list_of_cars
	end

end

nicks_car = Car.new
nicks_car.make = "Lotus"
nicks_car.color = "Lazer Blue"
nicks_car.back_seats = 0
nicks_car.max_speed = 160

jackies_car = Car.new
jackies_car.make = "Nissan"

adams_car = Car.new



p nicks_car
p jackies_car
p adams_car
# p nicks_car
# p nicks_car.make
# p @make
# p @color

# a = "Hey Ryan"

puts nicks_car.display_information
puts jackies_car.display_information
puts adams_car.display_information

p Car.list_of_cars









