number = 0

until number == 10
  number += 1
  next if number.odd? # or number % 2 != 0
  puts number
end
