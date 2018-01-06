statement = "The Flintstones Rock"

letter_frequency = {}
statement.each_char do |letter|
  next if letter == ' '
  letter_frequency[letter] = 0 unless letter_frequency.include?(letter)
  letter_frequency[letter] += 1
end

p letter_frequency


#LS solution
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
