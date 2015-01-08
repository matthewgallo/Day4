class Horses
	attr_accessor :color
	attr_accessor :name
	attr_accessor :location
	
	def initialize
		self.color = "color"
		self.name = "Horse1"
		self.location = 0
	end

	def display_information
		"#{self.color} #{self.name} #{location}"
	end


	# def add_horse a
	# 	horses.push(horses.pop)
	# 	horses.shuffle
	# 	a.times do |nay|
	# 		horses.push(horses.pop)
	# 	end
	# end

	def move_spaces *horse
		if location < 150
			self.location += rand(5..15)
			input = gets.chomp
		else
			self.location = 150
		end
		if input == "cheat"
			self.location += 25
		end	
		
	end
end



class Track
	attr_accessor :stalls
	attr_accessor :length


	def initialize
		self.stalls = 4
		self.length = 150
	end

	def builder horses
		system("clear")
		horses.each_with_index do |n|
			puts 
			self.length.times do
				print "-"
			end
		puts "\n\n"
		n.location.times do
			print "~"
		end
		puts "#{n.name.capitalize}"
		puts "\n"
		self.length.times do
			print "-"
			end
		end
		puts
		puts
		print "#{horses[0].name.capitalize} is at #{horses[0].location}		"
		print "#{horses[1].name.capitalize} is at #{horses[1].location}		"
		print "#{horses[2].name.capitalize} is at #{horses[2].location}		"
		puts "#{horses[3].name.capitalize} is at #{horses[3].location}"
	end
end


stall = []

horses = []
horses_names = ["santa","frank","ellen","marky","snark","funky","dunky","bumpy","ixion","clyde"]


num_of_horses = 4

4.times do |horsey|
		new_horse = Horses.new
		new_horse.name = horses_names.pop
		horses.push(new_horse)
		horses_names = horses_names.shuffle
	end
# puts horses.names
new_track = Track.new
while horses[0].location < 150 && horses[1].location < 150 && horses[2].location < 150 && horses[3].location
horses.each do |i|
	i.move_spaces
end
new_track.builder(horses)
end




# horses.each do |i|
# 	i = Horses.new
# 	i.name = "#{i}"
# end



# Clyde = Horses.new
# Clyde.color = "brown" 
# Clyde.name = "Clyde"

# Clyde.move_spaces
# Clyde.cheat



# @@ class variables only can be used inside of class