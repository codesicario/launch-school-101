LANGUAGE = 'es'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input = /^\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def operation_to_message(op)
  word = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  word
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('hi')

loop do #main loop
  number1 = ''
  loop do
    prompt('number1')
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('number2')
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt('operator_prompt')

operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when "1"
             number1.to_f + number2.to_f
           when "2"
             number1.to_f - number2.to_f
           when "3"
             number1.to_f * number2.to_f
           when "4"
             number1.to_f / number2.to_f
  end

  prompt("The result is #{result}")

  prompt ('additional_calculation')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt ('thank_you')
