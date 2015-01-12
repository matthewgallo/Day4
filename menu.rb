# Pull code from this file...
require './menuitem.rb'

class Menu
	attr_accessor :menu_data

	def initialize
		self.menu_data = [ ]
	end

	def add_item *menu_list
		menu_list.each do |item|
			new_item = MenuItem.new
			new_item.name = item[:name]
			new_item.price = item[:price]
			new_item.description = item[:description]
			self.menu_data.push(new_item)
		end
	end

	def remove_item name
		self.menu_data.delete_if do |item|
			item.name == name
		end
	end

	def create_order
		puts "What would you like to order?"
		hash = {}
		keep_populating = true
		while keep_populating
			puts "Here is our menu..."
			puts self.menu_data
			puts "Name:"
			hash[:name] = gets.chomp
			puts "Price:"
			hash[:price] = gets.chomp
			puts "Description:"
			hash[:description] = gets.chomp
			self.add_item(hash)
			puts "Would you like something else? Yes or No"
			answer = gets.chomp.downcase
			if answer == "No"
				keep_populating = false
			end
		end
	end
end

menu_current = Menu.new

item1 = {
	name: "Burrito",
	price: 6.99,
	description: "Very tasty burrito!",
}


item2 = {
	name: "Iron Burger",
	price: 30,
	description: "Only to those who dare to challenge the Iron Burger!",
}


item3 = {
	name: "Salad",
	price: 5.99,
	description: "For the health nuts, very delicious salad.",
}

menu_current.add_item(item1, item2, item3)
puts menu_current




# puts menu_current

menu_current = Menu.new

menu_current.menu_data.each do |add_to_menu|
	puts add_to_menu[:name]
	puts add_to_menu[:price]
end

menu_current.create_order



# p menu_current.menu_data




# puts "Your order consists of #{menu_current}, is that correct? Yes or no."
# answer = gets.chomp.downcase
# 	if answer == "yes"















