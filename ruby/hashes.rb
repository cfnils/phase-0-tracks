#prompt user for details, and convert inputs to the correct data types if necessary
puts "Hello new client! Please let us know the following information"

puts "Please enter your name:"
name = gets.chomp

puts "Please enter your age:"
age = gets.chomp.to_i

puts "Do you have any children? Please enter 'true' or 'false':"
children = gets.chomp

if children == "true"
	children = true
else
	children = false
end


puts "Please enter your decor theme:"
theme = gets.chomp

#create the hash
new_client = {client_name: name, client_age: age, client_has_children: children, client_theme: theme}

#print out the hash on screen
puts new_client

#ask user which key they would like to update. get input and convert to symbol data type
puts "Which key you would like to update? Please enter key name or none if you don't need to:"
update = gets.chomp

#if they don't input "none" 
	#convert string to symbol
	#ask for value
	#assign the value to the key
if update != "none"
	update = update.to_sym
	puts "New Value:"
	new_value = gets.chomp
	new_client[update] = new_value
end

#print out the new version of the hash
puts new_client

#exit program
exit