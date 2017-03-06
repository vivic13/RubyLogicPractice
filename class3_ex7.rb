class Student
	attr_accessor :name,:grade
	def initialize(name,grade)
		@name = name
		@grade = grade
	end

	
	def better_grade_than?(other_student)
 		other_student.grade < grade
	end

	private

	def grade
		@grade
	end

end

joe=Student.new("Joe",90)

bob=Student.new("Bob",80)

puts "Well done" if joe.better_grade_than?(bob)