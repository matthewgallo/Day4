puts "Thank you for dining with us tonight. Here is our menu: "

class restaurant
	attr_accessor :item
	attr_accessor :price

	def initialize 
		self.item = "menu"
		self.price = "price_array"
	end

	def display_information
		"#{self.name} #{self.price}"
	end

end