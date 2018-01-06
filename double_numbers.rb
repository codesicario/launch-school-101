#transformation example. Entire transformation code is within the method definition. Multiplies each value by 2.
investment_values = [120, 345, 765, 987]

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  p doubled_numbers
end

double_numbers(investment_values)
p investment_values




#method that mutates the argument
monetary_values = [120, 345, 765, 987]

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2

    counter += 1    
  end
    p numbers
end

double_numbers!(monetary_values)
p monetary_values
