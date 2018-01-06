# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernal.gets()
# Keranl.puts(answer)

def prompt(message)
  puts ("=> #{message}")
end

puts "Welcome to the Calculator!"

puts "What's the first number?"
number1 = gets.chomp

puts "What's the second number?"
number2 = gets.chomp

puts "What operation would you like the Calculator to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

result = case operator
         when "1"
           number1.to_i + number2.to_i
         when "2"
           number1.to_i - number2.to_i
         when "3"
           number1.to_i * number2.to_i
         when "4"
           number1.to_f / number2.to_f
end

puts "The result is #{result}"
