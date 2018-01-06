my_question = "I would like to know how many times a certain letter appears in this sentence."

def select_letter(question, letter_selection)
  chosen_letter = ''
  counter = 0

  loop do
    question_chrs = question.split(//)
    break if counter == question_chrs.length

    chars_arry = question_chrs.select{ |l| l == letter_selection }
    chosen_letter = chars_arry.join

    counter += 1
  end
    chosen_letter
end

p select_letter(my_question, 'w')
p select_letter(my_question, 'w').size


#LS solution
def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end
