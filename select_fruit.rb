produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

#def select_fruit(fruit)
#  fruit.select { |k, v| v == 'Fruit' }
#end

def select_fruit(produce_list)
  produce_arr_keys = produce_list.keys
  counter = 0
  selected_fruit = {}

  loop do
    break if counter == produce_arr_keys.size
    current_key = produce_arr_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruit[current_key] = current_value
    end

    counter += 1
  end
  p selected_fruit
end

select_fruit(produce)
