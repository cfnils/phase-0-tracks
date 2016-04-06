class Puppy

  def initialize
    print "initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  
  def speak(num)
    num.times do
      print "Woof! "
    end
  end
  
  def roll_over
    print "*rolls over*"
  end
  
  def dog_years(num)
    num = num*7
  end
  
  def sit
    print "*sits*"
  end
end

class Cat
  
  def initialize
    print "initializing new cat"
  end
  
  def chase_string(num)
    num.times do
      print "chasing string! "
    end
  end
  
  def meow
    print "Meoww!!"
  end
end

#cat driver code

cat_array = []
50.times do |i|
  cat_array.push(Cat.new)
end

p cat_array

cat_array.each do |i|
  i.chase_string(1)
  i.meow
end

#puppy driver code
smitty = Puppy.new

smitty.fetch("ball")

smitty.speak(2)

smitty.roll_over

p smitty.dog_years(1)

smitty.sit
