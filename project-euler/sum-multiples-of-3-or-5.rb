def sum_multiples_3_or_5
	#Calculates multiples of 
	puts "Please enter a number between 0 and 1000"
	n = gets.strip.to_i

	numbers = Array(1...n)   #[0,n) vs. (1..n)==> [1,n]
	multiples = Array.new
	sum = 0

	numbers.each do |i|
		if (i % 3 == 0) || (i % 5 == 0)
			multiples.push(i)
			sum += i
		end
	end
	puts "Sum of the multiples:"
	puts sum
end

puts sum_multiples_3_or_5