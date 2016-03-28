puts "hamster's name?"
name = gets.chomp

puts "volume level (1-10)?"
volume = gets.chomp.to_i

puts "fur color?"
fur_color = gets.chomp

puts "makes a good adoption candidate? (Y/N)"
adoption = gets.chomp
if adoption == "Y"
  adoption = true
else
  adoption = false
end

puts "estimated age?"
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_i
end

puts name
puts volume
puts fur_color
puts adoption
p age