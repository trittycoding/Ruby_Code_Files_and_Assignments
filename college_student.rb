require_relative 'student'

# Code files and variables are snake case,
# while classes follow camel case
class CollegeStudent < Student
  def initialize(name, gpa, password, debt)
    super(name, gpa, password)
    @debt = debt
  end

  def cries(gpa)
    if gpa < 2.0
      puts "#{@name} is crying due to their low grades!"
    else
      puts "#{@name}'s grades aren't bad enough to shed tears!"
    end
  end
end
