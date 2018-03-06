max = 998001
min = 10000

palindromes = []

while max > min
  palindromes << max if max.to_s == max.to_s.reverse
  max = max - 1
end

def three_digit_factorial number
    current = 999
    ending = 100

    while current >= ending
      return [current, number/current] if number % current == 0 && (number/current).to_s.length == 3
      current = current - 1
    end
end

while !palindromes.empty? 
  num = palindromes.shift
  if (result = three_digit_factorial num)
    puts result
    exit
  end
end
