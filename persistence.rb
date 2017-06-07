
def persistence(n)
    count = 0
    while n.to_s.length > 1
        n = n.to_s.split('').map(&:to_i).inject(:*)
        count += 1
    end
    count
end

def MultiplicativePersistence num
    val = 0
    while num.to_s.length > 1
        array_of_digits = num.to_s.split("")
        val += 1
        num =array_of_digits.inject { |mult,x| mult.to_i * x.to_i }
    end
    val
end

#FizzBuzz

(1..100).each do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Fizz"
  elsif i % 3 == 0
    puts "Buzz"
  else
    puts i 
  end
end
      
      