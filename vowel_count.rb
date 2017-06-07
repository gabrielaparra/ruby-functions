def get_count(string)
  count = 0
  string.downcase.each_char do |letter|
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
      count += 1
    end
  end
  count
end

#IMPROVED METHOD:

def get_count(string)
  string.downcase.count('aeiou')
  #count with a condition, will only count what satisfies that condition
end