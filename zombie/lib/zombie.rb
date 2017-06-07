class Zombie
	attr_accessor :name, :brains

	def initialize 
		@name = "Ash"
		@brains = 0
	end

	def hungry?
		true
		#predicate method
	end

	def alive?
		false
	end
end