def sum_even_fibonacci
	puts "Please enter a number above 0"
	n = gets.strip.to_i

	if n == 1

		fibonacci = [1]
		sum = 1

	elsif n.between?(2, 4000000)
			
		fibonacci = [1, 2]
		sum = 3

		until fibonacci[-1] + fibonacci[-2] > n
		fibonacci.push(fibonacci[-1] + fibonacci[-2])

		sum += fibonacci[-2] + fibonacci[-3]
		end 

	end
	puts "The fibonacci numbers are #{fibonacci}"
	puts "The sum of the fibonacci numbers is #{sum}"
end

puts sum_even_fibonacci