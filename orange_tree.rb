class OrangeTree

	def initialize
		@height = 3
		@orange_count = 0

		puts "A new orange tree has been planted."
	end

	def pickAnOrange
		if @orange_count != 0
			@orange_count -= 1
			puts "Yum! That orange was delicious."
		else
			puts "No oranges to pick."
		end
	end

	private

	def height 
		@height = 3 
	end

	def one_year_passes
		@orange_count = 0
		@age += 1
		@height += 1
	end

	def maturity
		if @age >= 3 
			@orange_count = 300
		elsif @age == 80
			return 'The tree is dead'
		end
	end
end

tree = OrangeTree.new
tree.pickAnOrange