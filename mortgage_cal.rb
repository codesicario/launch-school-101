def prompt(message)
  puts "=> #{message}"
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

prompt('Welcome to the LS Mortgage Loan Calculator! Please enter your name:')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('Make sure to use a valid name.')
  else
    break
  end
end

prompt("Hello #{name}")

loop do                               # main loop
  loan = ''
  loop do
    prompt('What is the Mortgage loan amount?')
    loan = gets.chomp

    if number?(loan)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  apr = ''
  loop do
    prompt('What is the Annual Percentage Rate(APR)?')
    apr = gets.chomp

    if number?(apr)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  years = ''
  loop do
    prompt('How many years is the term of the loan?')
    years = gets.chomp

    if integer?(years)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  months = years.to_i * 12
  monthly_int_rate = (apr.to_f / 12) / 100
  monthly_principal = (loan.to_f / months.to_i)
  monthly_payment = loan.to_f * (monthly_int_rate /
    (1 - (1 + monthly_int_rate)**-months))
  monthly_int = monthly_payment.to_f - monthly_principal.to_f

  prompt(
    "Your monthly payment is $#{format('%02.2f', monthly_payment)}.
    The principal is $#{format('%02.2f', monthly_principal)}
    and the interest is $#{format('%02.2f', monthly_int)}"
        )

  prompt 'Would you like to perform another calculation? (Y to continue.)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the LS Mortgage Loan Calculator')
