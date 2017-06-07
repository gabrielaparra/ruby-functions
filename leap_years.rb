def leap 
	puts "I'll calculate the leap years within a range."
	puts "Please name the starting year"
	starting = gets.strip.to_i

	puts "Please name an ending year"
	ending = gets.strip.to_i
	while ending <= starting
		puts "Please enter a year that follows the starting year"
		ending = gets.strip.to_i
	end

	years = Array(starting..ending)
	leap_years = Array.new

	years.each do |i|
		if i % 4 == 0
			leap_years.push(i)
		elsif i % 100 == 0 && i % 400 == 0
			leap_years.push(i)
		end
	end

	if leap_years == []
		puts "I didn't find any leap years"
	else
		puts "The leap year(s) I found:"
		print leap_years
	end
end

puts leap 