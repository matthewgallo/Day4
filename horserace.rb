class Horses
	attr_accessor :name
	attr_accessor :location
	attr_accessor :speed
	
	def initialize
		self.name = "Horse1"
		self.location = 0
		self.speed = 2
	end

	def display_information
		"#{self.name} #{location}"
	end

	def move_spaces *horse
		
		self.location += ((rand(1..3) * self.speed) - 1) 
		# add if statement that says if a horse's location is >= 150, 
		# that horse wins the race and breaks out of the loop running the program.
		if location >= 150
			puts "#{self.name.capitalize} won the race!"
		end
	end

	def cheat_spaces *horses
		self.location += 25
	end

end




class Track
	attr_accessor :length


	def initialize
		self.length = 150
	end

	def builder horses
			system("clear")
			horses.each do |n|
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
		horses.each do |x|
			print "#{x.name.capitalize} is at #{x.location}.     ||  "
		end
		puts

	end
end

horses = []
winning_horses = []
winning_locations = []
horses_names = ["santa","frank","ellen","marky","snark","funky","dunky","bumpy","ixion","clyde"]


new_track = Track.new

puts "How many horses are competing? Choose between 2 and 8."
horse_num = gets.chomp.to_i
horse_number = horse_num

until horse_num > 1 && horse_num < 9 && horse_num.class == Fixnum
puts "Please enter a valid answer."
puts "How many horses are competing? Choose between 2 and 8."
horse_num = gets.chomp.to_i
horse_number = horse_num
end

puts "How long do you want your track? Choose between 75-150."
new_track_length = gets.chomp.to_i
new_track.length = new_track_length

horse_num.times do |horsey|
		new_horse = Horses.new
		new_horse.name = horses_names.pop
		horses.push(new_horse)
		horses_names = horses_names.shuffle
	end


puts "Your horse is Clyde"
puts "Press enter to continue"
input = gets.chomp.downcase
if input == "cheat"
	
	horses[0].speed *= 3 
end
	if input == "slow down"
	horses.each do |x|
		x.speed = 1
	end 
	horses[0].speed = 2
end
	

new_track.builder(horses)

while horses[0].location < new_track.length && 
		horses[1].location < new_track.length && 
		horses[2].location < new_track.length && 
		horses[3].location < new_track.length
		new_track.builder(horses)

			horses.each do |i|
			i.move_spaces
		end
		
		sleep(0.15)
end

horses.each do |i|
	if i.location == new_track.length || new_track.length < i.location
		winning_locations.push(i.location)
		i.location = new_track.length
		new_track.builder(horses)
		winning_horses.push(i.name.capitalize)
	end
end

if winning_horses.length > 1
	locator = winning_locations.index(winning_locations.max)	
	puts
	puts "Very close race..."
	puts 
	print winning_horses[locator]
	puts " is the winner"
else
	puts
	puts "The winning horse is: "
	puts
	puts winning_horses
end





# horses.each do |i|
# 	i = Horses.new
# 	i.name = "#{i}"
# end







