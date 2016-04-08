# Set up class for dragon
class Dragon
# set attributes for dragon
# 	name
# 	age
# 	if its evil (true or false)
# 	location

	attr_reader :name, :age
	attr_accessor :location, :is_evil

	def initialize(name, age, is_evil)
		@name = name
		@age = age
		@is_evil = is_evil
		@location = "Dragon Mountain"
	end


# set methods for dragon
# 	fly to someplace- takes destination as arguement
# 	breathe fire
# 	watch tv in cave- takes name of show as arguement
# 	
	def fly_to(location)
		puts "#{@name} the dragon is flying to #{location}"
		@location = location
	end

	def breathe_fire
		puts "AHHHH IT BURNS!!!!!!!!!!!!!!"
	end

	def watch_tv(show)
		if @is_evil 
			puts "Time to unwind after a long day of terrorizing with my favorite show, #{show}"
		else
			puts "I'm not a bad guy, i just like to chill and watch #{show}"
		end
	end
end

#driver code to make sure the methods work

falgor = Dragon.new("Falgor", 230, true)
puts falgor.location
puts falgor.is_evil
falgor.fly_to("Russia")
puts falgor.location
falgor.breathe_fire
falgor.watch_tv("Seinfeld")
falgor.is_evil = false
falgor.watch_tv("Seinfeld")



