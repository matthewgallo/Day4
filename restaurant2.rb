class MenuItem

	attr_accessor :name
	attr_accessor :price
	attr_accessor :description
	@@list_of_items = []

	def initialize
		self.name = "Burrito"
		self.price = 9.99
		self.description = "Tasty burrito!"
		MenuItem.list_of_items.push(self)
	end

	def display_items
		"#{self.name} #{self.price} #{self.description}"
	end

	# Class method
	def self.display_all_items
	end

	def self.list_of_items
		@@list_of_items
	end

end