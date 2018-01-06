fun_numbers = [13, 56, 87, 35, 2, 98, 2375]

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p double_odd_numbers(fun_numbers)
p fun_numbers



#doubled number based on index being odd

fun_numbers = [13, 56, 87, 35, 2, 98, 2375]

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd? #or counter % 2 != 0
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p double_odd_indices(fun_numbers)
p fun_numbers
