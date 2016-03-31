#it won't let me call my private methods unless i set the class
class String

	#method to change vowels to the next vowel in "aeiou"
	def switch_vowel(vowel)
		vowels = ["a","e","i","o","u"]
		vowel_index = vowels.find_index(vowel)
		if vowel_index == 4
			next_index = 0
		else
			next_index = vowel_index + 1
		end
		next_vowel = vowels[next_index]
	end

	#method to change consonants to the next consonant
	def switch_consonant(consonant)
		consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
		consonant_index = consonants.find_index(consonant)
		if consonant_index == 20
			next_index = 0
		else
			next_index = consonant_index + 1
		end
		next_consonant = consonants[next_index]
	end

	#method to switch vowel if its a vowel, 
	#and switch consonant if its a consonant
	def switch_letter(let)
		vowels = ["a","e","i","o","u"]
		if vowels.include?(let)
			switch_vowel(let)
		else
			switch_consonant(let)
		end
	end

end

#initialize real_name variable
real_name = ""

#initialize real_name_list array
real_name_list = [] 

#initialize secret_name_list array
secret_name_list = []

#until a user types " quit" keep generating secret names
until real_name == "quit"

#ask for full name and take input
# switch all letters to lowercase
	puts "Enter Full Name (or 'quit' to quit)"
	real_name = gets.chomp.downcase
	
	#prevent iterating thru steps before getting to top of until loop
	#because 'quit' is one word it would give an error
	if real_name == "quit"
		next
	end

	#convert to an array
	# split it into first and last

	split_names = real_name.split(' ')
	first_name = split_names[0]
	last_name = split_names[1]

	#update real_name to contain name with correct upper and lower case
	real_name = first_name.capitalize + " " + last_name.capitalize

	#create first and last name arrays with each letter as an element
	first_array = first_name.split('')
	last_array = last_name.split('')

	#itterate thru the array, call method to change the letter to the next corresponding letter
	secret_first_array = first_array.map { |letter| letter.switch_letter(letter)}
	secret_last_array = last_array.map { |letter| letter.switch_letter(letter)}

	# change first and last arrays back into strings
	secret_first_name = secret_first_array.join('')
	secret_last_name = secret_last_array.join('')

	# make first letter of first & last name upper case of first and last name
	secret_first_name.capitalize!
	secret_last_name.capitalize!
	
	#set secret name to last name followed by first name
	secret_name = secret_last_name + " " + secret_first_name

	#print the new spy name
	puts "Your secret name is #{secret_name}"

	#add real name to real_name_list array
	real_name_list.push(real_name)

	#add secret name to secret_name_list array
	secret_name_list.push(secret_name)
end

puts "Ok Agent! Here's your list of real names and their secret alter-ego's:"
if real_name_list.length == 0
	puts "No secret identities generated."
else
	name_num = 0
	while name_num < real_name_list.length
		puts "#{real_name_list[name_num]} is now known as #{secret_name_list[name_num]}."
		name_num += 1
	end
end

exit