names = ['Sally', 'Joe', 'Lisa', 'Henry']
first_name = names[0..4]

loop do
  puts first_name
  break
end


#School Solution
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift #names.pop to print last to first.
  break if names.empty?
end
