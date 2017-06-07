def englishNumber number
  while number < 0  
    puts 'Please enter a positive number'
    number = gets.strip.to_i
    englishNumber(number)
  end
  return 'The number is zero' if number == 0

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number
  write = left/1000000          # How many millions left to write out?
  left  -= write*1000000

  if write > 0
    millions  = englishNumber write
    numString += millions + ' million'
    numString += ' ' if left > 0
  end

  write = left/1000          # How many thousands left to write out?
  left  -= write*1000

  if write > 0
    thousands  = englishNumber write
    numString += thousands + ' thousand'
    numString += ' ' if left > 0
  end

  write = left/100          # How many hundreds left to write out?
  left  -= write*100  

  if write > 0
    hundreds  = englishNumber write
    numString += hundreds + ' hundred'
    numString += ' ' if left > 0
  end

  write = left/10          # How many tens left to write out?
  left -= write*10  

  if write > 0
    if ((write == 1) && (left > 0))
      numString += teenagers[left-1]

      left = 0
      # So we don't write something like nineteen nine
    else
      numString += tensPlace[write-1]
    end

    numString += '-' if left > 0
    # So we don't write 'sixtyfour'...
  end

  write = left  # How many ones left to write out?
  left  = 0     

  if write > 0
    numString += onesPlace[write-1]
  end

  # Return "numString"
  puts "The number is: #{numString}"
end

puts 'Hi, Please type in a number'
number = gets.strip.to_i
puts englishNumber(number)
