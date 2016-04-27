# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

create_items_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    done BOOLEAN,
    list_id INT,
    FOREIGN KEY (list_id) REFERENCES lists(id)
  )
SQL

create_lists_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS lists(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

# create tables for items and lists if necessary
db.execute(create_items_cmd)
db.execute(create_lists_cmd)

# method to create to do list
def create_tdl(db)
	puts "Please give your list a name"
	list_name = gets.chomp
	#add name to DB
	db.execute("INSERT INTO lists (name) VALUES ('#{list_name}');")
	#get the id number of the name
	id_number = db.execute("SELECT id FROM lists WHERE name = '#{list_name}';")
	puts "Please enter all your initial items on your #{list_name} to do list. When you are done enter 'done'"
	item = gets.chomp
		while item != "done"
			#put it into the db
			db.execute("INSERT INTO items (item, done, list_id) VALUES ('#{item}', 'false', #{id_number[0][0]});")
			item = gets.chomp
		end
end

def edit_tdl(db)
	which_list = 0
	while which_list != "main"
		puts "Here's all your lists." 
		lists = db.execute("SELECT * FROM lists;")
		lists.each do |x|
			puts "#{x['id']} #{x['name']} "
		end
		puts "Please enter the number to see or update the list. To go back to main menu enter 'main'"
		which_list = gets.chomp
		if which_list.to_i != 0
			puts "OK great! Here is your selected to do list:"
			items = db.execute("SELECT * FROM items WHERE list_id=#{which_list.to_i};")
			items.each do |x|
				puts "#{x['id']} #{x['item']} completed: #{x['done']}" 
			end
			puts "enter '1' to add new items, '2' to mark an item completed, or 'back' to go back"
			edit_choice = gets.chomp
			if edit_choice.to_i == 1
				puts "please enter your items, when you are finished enter 'done'."
				new_item = ""
				while new_item != "done"
					new_item = gets.chomp
					if new_item != "done"
						db.execute("INSERT INTO items (item, done, list_id) VALUES ('#{new_item}', 'false', #{which_list});")
						puts "item added!"
					end
				end
			elsif edit_choice.to_i == 2
				puts "please select a number to mark completed, or type 'back' to go back"
				mark_done = ""
				while mark_done != "back" 
					mark_done = gets.chomp
					if mark_done.to_i == 0 && mark_done != "back"
						puts "invalid entry, please try again"
					elsif mark_done.to_i >0
						db.execute("UPDATE items SET done = 'true' WHERE id = #{mark_done};")
						puts "marked completed!"
					else
						puts "going back!"
					end
				end
			else
				puts "going back."
			end
		elsif which_list == "main"
			puts which_list
			puts "going back to main menu"
		else
			puts "try again"
		end
	end
end



# User Interface
initial_selection = 0
while initial_selection != "quit"
	puts "Todolist app main menu. What would you like to do?"
	puts "1 - create a new list."
	puts "2 - see or update an existing list."
	puts "quit - exits the program."
	initial_selection = gets.chomp
	if initial_selection == "1"
		create_tdl(db)
	elsif initial_selection == "2"
		edit_tdl(db)
	elsif initial_selection == "quit"
		puts "thanks for trying our app! See you next time :)"
	else
		puts "OOPS! Invalid selection, try again!"
	end
end
