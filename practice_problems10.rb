munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



munsters.each do |name, value|
  if value["age"] >= 18 && value["age"] <= 64
    value.merge!({"age_group" => "adult"})
  elsif value["age"] >= 65
    value.merge!({"age_group" => "senior"})
  elsif value["age"] < 18
    value.merge!({"age_group" => "kid"})
  end
end

p munsters



#LS solution
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
