def snake_camel(phrase)
  new_phrase = []

  if phrase.include?("_")
    new_phrase = phrase.split('_').collect(&:capitalize).join

  else 
    new_phrase = phrase.split(/(?=[A-Z])/).collect(&:downcase).join("_")
    #Adding ?= to the regex splits the expression right before finding the uppercase letter,
    #without .split will take out the 
  end

  puts new_phrase
end

puts 'Type in an snake or a camel case'
string = gets.strip
puts snake_camel(string)