puts "How many bottles?"
bottle = gets.strip.to_i
count = bottle

while count > 1

	puts "#{count} bottles of beer on the wall, #{count} bottles of beer.
Take one down and pass it around, #{count - 1} bottles of beer on the wall"
	puts
	count -= 1

	if count == 1
		puts "#{count} bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall"
		puts
		puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, #{bottle} bottles of beer on the wall."
	end
	
end