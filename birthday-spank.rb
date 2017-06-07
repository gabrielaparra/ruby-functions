puts "Please enter the year you were born"
yyyy = gets.strip.to_i

puts "Now the month (in numbers)"
mm = gets.strip.to_i

puts "And finally the day (in numbers)"
dd = gets.strip.to_i

def birthday_spank(mm, dd, yyyy)
	if Time.now.year > yyyy
		if (Time.now.day >= dd) && (Time.now.month >= mm)
			birthdays = Time.now.year - yyyy
			spank(birthdays)
		else
			birthdays = Time.now.year - yyyy - 1
			spank(birthdays)
		end
	else
		puts "You're not even a year old! How are you using this program?"
	end
end

def spank(birthdays)
	birthdays.times do 
		puts "SPANK!"				
	end
	puts "A well deserved spank for each one of your birthdays!"
end

birthday_spank(mm, dd, yyyy)