# Introduction to Ruby
# Comments are denoted by '#'

# Constants are in upper case
NAME_OF_PROGRAMMER = 'Travis'.freeze
LEGAL_VOTING_AGE = 18

# puts is the equivalent of console.log w/ new line
puts 'Hello World'

# print function does this on the same line
print 'This is our first Ruby program. '

# 'def' represents defining a function
# the return keyword at the end of functions is actually optional
# the 'end' keyword is required when defining functions
def fetch_input(question_to_user)
  print question_to_user
  gets.chomp # return not needed
end

# 'gets' receives input from the keyboard, while
# chomp removes a new line @ end of string
name = fetch_input('What is your name? ')

# I f statements must have an 'end' clause
# or else the program will crash
greeting = if name == NAME_OF_PROGRAMMER
             'your excellency!'
           else
             'my friend!'
           end

# String interpolation --> #{} like a short echo
puts "Hello #{name}, #{greeting}!"
puts "Your name in reverse is #{name.reverse.downcase.capitalize}"

age_input = fetch_input('What is your age? ')
age_integer = age_input.to_i

if age_integer >= LEGAL_VOTING_AGE
  puts 'You are of legal voting age'
else
  puts "You must wait #{LEGAL_VOTING_AGE - age_integer} years in order to vote"
end

dog_years = age_integer * 7
puts "If you were a dog, you'd be #{dog_years} years old!"

puts '<<BILL NYE THE SCIENCE GUY>>'
# Loops are denoted by the 'do' keyword
5.times do |i| # i denotes the variable assigned to the counter
  puts "#{i + 1} BILL!"
end
