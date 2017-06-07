puts "Hi, what's your first name?"
first_name = gets.strip.capitalize

puts "What's your middle name? Answer 'no' if none"
middle_name = gets.strip.capitalize

puts "What's your last name?"
last_name = gets.strip.capitalize

if middle_name == "No"
	letters = (first_name.length + last_name.length).to_s
	puts "Hi #{first_name} #{last_name}, lovely to meet you."
	puts "Did you know there are #{letters} letters in your full name?"
else
	letters = (first_name.length + middle_name.length + last_name.length).to_s 
	puts "Hi #{first_name} #{last_name}, nice to meet you. #{middle_name} is a weird name though."
	puts "Did you know there are #{letters} letters in your full name?"
end
