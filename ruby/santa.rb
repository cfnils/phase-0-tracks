class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def about
		puts "gender is #{@gender}"
		puts "ethnicity is #{@ethnicity}"
		puts "reindeer_ranking is #{@reindeer_ranking}"
		puts "age is #{@age}"
	end

	def celebrate_birthday
		@age +=1
	end

	#all these options seemed to work, i commented out 2 but left them in case
	#one method is better than another
	def get_mad_at(reindeer)
		#@reindeer_ranking.push(reindeer).slice!(@reindeer_ranking.find_index(reindeer))
		#@reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer))
		@reindeer_ranking.push(reindeer).slice!(@reindeer_ranking.index(reindeer))
	end

	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end
end

doofus = Santa.new("male", "Asian")
doofus.speak
doofus.eat_milk_and_cookies("chocolate chip cookie")
doofus.about

guy = Santa.new("male", "black")
guy.about
guy.celebrate_birthday
guy.about
guy.get_mad_at("Rudolph")
guy.about
guy.get_mad_at("Dancer")
guy.about
puts guy.gender
puts guy.ethnicity