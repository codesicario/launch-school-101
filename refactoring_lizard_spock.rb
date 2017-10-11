VALID_CHOICES = %w[r p s l sp]
first_letter = {rock: 'r',
                paper: 'p',
                scissors: 's',
                lizard: 'l',
                spock: 'sp'
                }

def prompt(message)
  puts("=> #{message}")
end

win_lose_values = {
  rock: {rock: 'tie', scissors: 'win',  lizard: 'win', paper: 'lose', spock: 'lose'}
  paper: {paper: 'tie', rock: 'win', spock: 'win', scissors: 'lose', lizard: 'lose'}
  scissors: {scissors: 'tie',  paper: 'win', lizard: 'win', rock: 'lose', spock: 'lose'}
  lizard: {lizard: 'tie', paper: 'win', spock: 'win', rock: 'lose', scissors: 'lose'}
  spock: {spock: 'tie', scissors: 'win', rock: 'win', paper: 'lose', lizard: 'lose'}
}

def display_results(player, computer)
  if win?(player, computer)
    prompt('You Won!')
  elsif win?(computer, player)
    prompt('Computer Won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  prompt('Welcome to Rock Paper Scissors Lizard Spock')
  choice = ''
  loop do
    prompt("Please choose one: #{first_letter}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That is not a valid choice.')
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing.  Good bye.')
