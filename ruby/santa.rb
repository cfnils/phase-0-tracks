class Santa
	attr_reader :ethnicity, :gender
	attr_accessor :age

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

	#getter code below, now not needed because I used 
	#attr_reader and attr_accessor at the top
	
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end
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

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
150.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[i].age = rand(140)
  puts "New santa gender is #{santas[i].gender} and ethnicity is #{santas[i].ethnicity} and age is #{santas[i].age}"
end