def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
    puts "My string looks like this now: #{a_string_param}"
  an_array_param << "rutabaga"
    puts "My array looks like this now: [#{an_array_param}]"
end

tricky_method("pumpkins, ", "pumpkins, ")

#supplied answer

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins, squash, tomatoes"
my_array = ["pumpkins", "squash", "squash"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
