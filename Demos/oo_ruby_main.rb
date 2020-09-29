# Importing the classes
require_relative 'student'
require_relative 'college_student'

wally = CollegeStudent.new('Wally Tash', 2.0, 'Password1', 12_000)
wally.cries(wally.gpa)
