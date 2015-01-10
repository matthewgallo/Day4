puts "Thank you for dining with us tonight."
puts
puts

class Menu
	attr_accessor :menu_data

	def initialize
		self.menu_data = []
	end

	def add_item item
		self.menu_data.push(item) 
	end

	def remove_item name
		self.menu_data.delete_if do |item|
		item.name == name
		end

	end

	def populate_menu
		
		new_item= Item.new
		keep_populating = true
		while keep_populating
			puts "Our current menu:"
			puts
			self.menu_data.each do |i|
				puts i.name
				print "\s\s\s$"
				puts i.price
			end
			puts "Name:"
			new_item.name = gets.chomp
			puts "Price:"
			new_item.price = gets.chomp
			puts "Description:"
			new_item.description = gets.chomp
			puts "Category: 0 = Appetizers, 1 = entree, 2 = desserts, 3 = drinks:"
			new_item.category = gets.chomp
			self.add_item(new_item)
			puts "Do you want to add another item to the menu? Yes or no."
			answer = gets.chomp.downcase
			if answer == 'no'
				puts "Our current menu:"
				self.menu_data.each do |i|
				puts i.name
				puts i.price
			end
				puts "Press enter to continue:"
				keep_populating = false
				gets
			end
		end

	end
end

class Item
	attr_accessor :name
	attr_accessor :price
	attr_accessor :description
	attr_accessor :category

	def initialize
		self.name = "Name"
		self.price = 0.0
		self.description = "Entree description"
		self.category = "Entree"
	end
end

new_menu = Menu.new

chicken = Item.new
chicken.name = "Chicken"
chicken.price = 7.99
chicken.description = "Tasty chicken"
chicken.category = 1
new_menu.add_item(chicken)

cheesesteak = Item.new
cheesesteak.name = "Cheesesteak"
cheesesteak.price = 8.99
cheesesteak.description = "Delicious Philly style cheesesteak."
cheesesteak.category = 1
new_menu.add_item(cheesesteak)

french_fries = Item.new
french_fries.name = "French Fries"
french_fries.price = 3.99
french_fries.description = "Our hand-cut french fries"
french_fries.category = 0
new_menu.add_item(french_fries)

cheesecake = Item.new
cheesecake.name = "Cheescake"
cheesecake.price = 5.99
cheesecake.description = "New York style cheesecake, homemade!"
cheesecake.category = 2
new_menu.add_item(cheesecake)

beer = Item.new
beer.name = "Craft Beer"
beer.price = 3
beer.description = "Locally brewed craft beer."
beer.category = 3
new_menu.add_item(beer)

water = Item.new
water.name = "Water"
water.price = "0.50"
water.description = "Ice cold water."
water.category = 3
new_menu.add_item(water)





new_menu.populate_menu


new_menu.menu_data.each do |i|
	puts i.name
	puts i.price
	puts i.description
			end




# remove_item



