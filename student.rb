class Student
	attr_accessor :first_name

	def introduction(target)
		puts "Hi #{target}, I'm #{first_name}!"
	end
end

gabriela = Student.new
gabriela.first_name = "Gabriela"
gabriela.introduction('Lola')