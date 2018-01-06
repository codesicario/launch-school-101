investment_num = [234, 543, 76, 45, 98]

def multiply(numbers, selected_multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    original_num = numbers[counter]
    multiplied_numbers << original_num * selected_multiplier

    counter += 1
  end
    multiplied_numbers
end


p multiply(investment_num, 2)
p investment_num
