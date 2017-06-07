puts "Type in as many words as you want."
words = gets.split(/[\s,]/).map(&:capitalize).sort

print words
puts

# words = gets.strip.scan(/\w+/)
# .scan(/\w+/) will separate each element into a string, 
# even something like "I'm" will be splitted into 'I' and 'm'



