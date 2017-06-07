puts "Say something to Grandma"
say = gets.strip

while say != "BYE BYE BYE"
	
	if say == "BYE"
		puts "CAN'T HEAR YOU, REALLY..."
	elsif say == say.upcase
	 	puts "NO, NOT SINCE 19#{rand(30..51)}!"
	 	# Grandma will name a random year [1930, 1950]
	else 
		puts "HUH?!  SPEAK UP, SONNY!"
	end

	say = gets.strip
end

puts "DON'T HAVE TO YELL! BYE SON!"

