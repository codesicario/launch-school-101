def find_greatest(numbers)
  saved_number = nil
  return if numbers.nil?

  numbers.each do |num|
    saved_number = numbers.first  # assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end
