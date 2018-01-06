numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end

#another option
numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1  
end
