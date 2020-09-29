# Question 3
# Test class for leap_test.rb
class Year
  def initialize; end

  # '?' signifies a boolean return
  # Method to find out if given year is a leap year
  def self.leap?(year)
    if year % 4 === 0 && year % 100 != 0
      true
    elsif year % 4 === 0 && year % 100 === 0 && year % 400 === 0
      true
    else
      false
    end
  end
end
