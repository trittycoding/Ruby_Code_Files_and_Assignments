# Challenge Zero for Full Stack Web Development
# Travis Taylor

puts ''

# Q1 - Calculate the after tax value of a specific dollar amount
puts 'Question 1'

# Converting that user input to a float number
def fetch_input(question_to_user)
  print question_to_user
  gets.chomp
end

# Variables and Constants
sub_total = fetch_input('Enter a subtotal to calculate (>0) (format ##.##): ')
sub_total_float = sub_total.to_f.round(2)
PST = (sub_total_float * 0.07).round(2)
GST = (sub_total_float * 0.05).round(2)
grand_total = (sub_total_float + PST + GST).round(2)

# Check to see if input is a number greater than zero
if sub_total_float > 0
  puts ''
  puts 'Good input!'
  puts ''
  puts "Subtotal: $#{sub_total_float}"
  puts "PST: $#{PST} - 7%"
  puts "GST: $#{GST} - 5%"
  puts "Grand Total: $#{grand_total}"
else
  puts ''
  puts 'Invalid Input'
end

puts ''

# Q1 - Add short message depending on condition
puts 'Question 2'

if sub_total_float > 0
  puts ''
  puts 'Good input!'
  puts ''
  puts "Subtotal: $#{sub_total_float}"
  puts "PST: $#{PST} - 7%"
  puts "GST: $#{GST} - 5%"
  if sub_total_float <= 5
    puts "Grand Total: $#{grand_total}, Pocket Change!"
  elsif sub_total_float > 5 && sub_total_float < 20
    puts "Grand Total: $#{grand_total}, Wallet Time!"
  elsif sub_total_float >= 20
    puts "Grand Total: $#{grand_total}, Charge it!"
  end
else
  puts ''
  puts 'Invalid Input'
end
