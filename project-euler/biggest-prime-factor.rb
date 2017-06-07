def biggest_prime_factor
	puts "Please enter a number"
	n = gets.strip.to_i

	numbers = Array(1..n)
	prime_factors = Array.new

	require 'prime'
	numbers.each do |i|
		if n % i == 0 && Prime.prime?(i)
			prime_factors.push(i)
		end
	end
	print "The biggest prime factor is #{prime_factors.max}"
end

puts biggest_prime_factor