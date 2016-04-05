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

end

doofus = Santa.new("male", "Asian")
doofus.speak
doofus.eat_milk_and_cookies("chocolate chip cookie")
doofus.about
