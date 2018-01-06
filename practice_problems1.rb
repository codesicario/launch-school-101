flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
value_index = 0

flintstones.each_with_object({}) do |key, hash|
  hash[key] = value_index
  value_index += 1
  p hash
end


#LS solution
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
