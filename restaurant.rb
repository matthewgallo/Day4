puts "Welcome to..."
puts "
                                                               
                                                               
.---..          --.--               .--.                       
  |  |            |                 |   )                      
  |  |--. .-.     |  .--..-. .--.   |--: .  . .--..-.. .-. .--.
  |  |  |(.-'     |  |  (   )|  |   |   )|  | |  (   |(.-' |   
  '  '  `-`--'  --'--'   `-' '  `-  '--' `--`-'   `-`| `--''   
                                                  ._.'         
                                                                                                                        
"
puts

class Menu
	attr_accessor :menu_data
	attr_accessor :user_menu_data

	def initialize
		self.menu_data = []
		self.user_menu_data = []
	end

	def add_item item
		self.menu_data.push(item) 
	end

	def remove_item name
		self.menu_data.delete_if do |item|
		item.name == name
		end

	end

	def populate_user_menu
		
		new_item = Item.new
		keep_populating = true
		while keep_populating
			puts "Our current menu:"
			puts
			self.menu_data.each do |i|
				puts i.name
				print "\s\s\s"
				puts i.description
				print "\s\s\s$"
				puts i.price

			end
			# would you like to add to your order? if yes loop this if not, puts your order is...
			
				puts "Would you like to add to your order? Yes or no."
				response = gets.chomp.downcase
				eater_response = response

			if response != "yes" || response != "no"
					puts "Enter a valid response."
					puts "Please enter yes or no."
					response = gets.chomp.downcase
					eater_response = response
			end
				until response == 'no'	
					puts "What would you like to order from the menu?"
					answer = self.user_menu_data.push(gets.chomp.downcase)
					puts "Your order includes #{user_menu_data}."
					puts "Would you like to add to your order? Yes or no."
					response = gets.chomp.downcase
						puts "Your total order is a #{user_menu_data}."
				end

			new_item.name = gets.chomp
			
			# if response == 'no'
			# 	puts "Your order items:"
			# 	self.user_menu_data.each do |i|
			# 	puts i.name
			# 	puts i.price
			# end
				puts "Press enter to confirm your order and continue:"
				keep_populating = false
				gets
			
		end
		puts user_menu_data

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

user_order = Menu.new

burger = Item.new
burger.name = "Cheeseburger"
burger.price = 7.99
burger.description = "Tasty chesseburger!"
burger.category = 1
user_order.add_item(burger)

cheesesteak = Item.new
cheesesteak.name = "Cheesesteak"
cheesesteak.price = 8.99
cheesesteak.description = "Delicious Philly style cheesesteak."
cheesesteak.category = 1
user_order.add_item(cheesesteak)

salad = Item.new
salad.name = "Salad"
salad.price = 6.99
salad.description = "Fresh salad."
salad.category = 0
user_order.add_item(salad)

french_fries = Item.new
french_fries.name = "French Fries"
french_fries.price = 3.99
french_fries.description = "Our hand-cut french fries."
french_fries.category = 0
user_order.add_item(french_fries)

cheesecake = Item.new
cheesecake.name = "Cheescake"
cheesecake.price = 5.99
cheesecake.description = "New York style cheesecake, homemade!"
cheesecake.category = 2
user_order.add_item(cheesecake)

beer = Item.new
beer.name = "Craft Beer"
beer.price = 3
beer.description = "Locally brewed craft beer."
beer.category = 3
user_order.add_item(beer)

water = Item.new
water.name = "Water"
water.price = "0.50"
water.description = "Ice cold water."
water.category = 3
user_order.add_item(water)





user_order.populate_user_menu


# user_order.menu_data.each do |i|
# 	puts i.name
# 	puts i.price
# 	puts i.description
# 			end








