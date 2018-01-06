def factors(number)
  dividend = number
  divisors = []
  if number <= 0
    puts "Please enter a number greater than 0."
  else loop do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  break if dividend == 0
  end
end
  divisors
end

p factors(1000)

#another option is
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(1000)
