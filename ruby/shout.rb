# module Shout
	
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words.upcase + "!!!!" + " :)"
# 	end
# end

# puts Shout.yell_angrily("what the fuck")
# puts Shout.yell_happily("i'm so excited")

module Shout

	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words.upcase + "!!!!!" + " :)"
	end
end

class Teacher
	include Shout
end

class Student
	include Shout
end

mr_person = Teacher.new
puts mr_person.yell_angrily("I'm very disappointed in this class")
puts mr_person.yell_happily("welcome to detention")

ms_lady = Student.new
puts ms_lady.yell_happily("i'm finished with the exam")
puts ms_lady.yell_angrily("I'm going to fail")