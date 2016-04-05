class Santa
	
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance"
	end
end

doofus = Santa.new
doofus.speak
doofus.eat_milk_and_cookies("chocolate chip cookie")
