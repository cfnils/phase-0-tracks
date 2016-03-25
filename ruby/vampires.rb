puts "How many employees to be processed?"
how_many = gets.chomp

which_employee = 1

while  which_employee <= how_many.to_i

	puts "Hello new employee prospect! Let's begin."
	
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	old = gets.chomp

	puts "What year were you born?"
	year = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	vampire_status = nil

	if old.to_i == (2016 - year.to_i) && (garlic == "y" || insurance == "y")
		vampire_status = "Probably not a vampire."
	end
	if old.to_i != (2016 - year.to_i) && (garlic == "n" || insurance == "n")
		vampire_status = "Probably a vampire."
	end
	if old.to_i != (2016 - year.to_i) && (garlic == "n" && insurance == "n")
		vampire_status = "Almost certainly a vampire."
	end
	if name == "Drake Cula" || name == "Tu Fang"
		vampire_status = "Definitely a vampire."
	end

	if !vampire_status
		puts "Results inconclusive"
	else
		puts vampire_status
	end

	which_employee += 1
end

puts "Employee processing complete!"
