#release 0
def say_goodbye
  place = "Antarctica"
  puts "Goodbye"
  yield(place)
  puts "Visit us again!"
end

say_goodbye { |location| puts "from #{location}!"}


#release 1
p actors_characters = {Robert_Deniro: "Jimmy Conway", Sylvester_Stalone: "Rocky Balboa", Melanie_Griffith: "Tess McGill"}

p movies_we_like = ["Princess Bride", "Raging Bull", "The Usual Suspects"]

actors_characters.each do |actor, character|
  character = character.downcase
  p character
end

movies_we_like.each do |movie|
  movie = movie.upcase
  p movie
end

movies_we_like.map! {|movie| p movie.length}
p movies_we_like

#release 2

test_hash = {abc: 13, def: 46, ghi: 78, jkl: 33}
test_array = [1, 5, 14, 63, 34, 10]

# A method that iterates through the items, deleting any that meet a certain 
# condition (for example, deleting any numbers that are less than 5).

 delete_hash = test_hash.delete_if{|x, y| y < 40}
 p "Delete hash is #{delete_hash}"
 
 delete_array = test_array.delete_if{|x| x < 20}
 p "Delete array is #{delete_array}"

# A method that filters a data structure for only items that do satisfy a 
# certain condition (for example, keeping any numbers that are less than 5).

test_hash = {abc: 13, def: 46, ghi: 78, jkl: 33}
test_array = [1, 5, 14, 63, 34, 10

 filter_hash =  test_hash.keep_if{|x, y| y > 50}
 p "Filter hash is #{filter_hash}"

 filter_array = test_array.keep_if{|x| x > 10}
 p "Filter array is #{filter_array}"


# A different method that filters a data structure for only items satisfying
# a certain condition -- Ruby offers several options!

test_hash = {abc: 13, def: 46, ghi: 78, jkl: 33}
test_array = [1, 5, 14, 63, 34, 10

filter_hash_2 = test_hash.select{|x,y| y> 40}
p "2nd Filter hash is #{filter_hash_2}"

filter_array_2 = test_array.select{|x| x.odd?}
p "2nd Filter array is #{filter_array_2}"

# A method that will remove items from a data structure until the condition
# in the block evaluates to true, then stops.

test_hash = {abc: 13, def: 46, ghi: 78, jkl: 33}
test_array = [1, 5, 14, 63, 34, 10
	
remove_until_hash = test_hash.drop_while {|x,y| y < 40}
p "Remove until true hash is #{remove_until_hash}"

remove_until_array = test_array.drop_while {|i| i < 20}
p "Remove until true array is #{remove_until_array}"
