# The '<' operator acts as extends
# Objects are instantiated through the '.new' keyword
# EX:// wally = Student.new('Wally Glutton')
class Student < Object
  SCHOOL = 'Red River College'.freeze
  # All constructors in Ruby are called initialize
  # Ruby is a dynamic language - the types are all inferred based on context
  # Ruby is an interpreted language, not compiled
  def initialize(name, gpa = '0', password = 'DefaultPassword1')
    # Guards are able to be put into agruments to ensure certain data types however it is not required
    # '@' represents an instance variable i.e. this.
    @name = name
    @gpa = gpa
    @password = password
  end

  # # Getter for name
  # def name
  #   return @name
  # end

  # # Setter for name
  # def name=(new_name)
  #   @name = new_name
  # end

  # Ruby can also write you getter/setters for variables using an attribute accessor
  attr_accessor :new_name

  # Produces only a public setter, private getter
  attr_writer :password

  # Produces only a getter, private setter
  attr_reader :gpa

  # Self = can be called without an object, the equivalent of a static method.
  def self.location
    SCHOOL
  end

  def write_code
    puts "#{@name} says all this hacking is making me thirsty!"
  end

  # toString for this class
  def to_s
    "#{@name} - GPA: #{@gpa} - Redacted Password: #{'*' * @password.size}"
  end
end

# Monkey patching - classes are able to be opened up multiple times during code
# We opened up the student class above and once more down below
# As a result, we cannot have overloaded constructors as it will overwrite the previous method
# Overrides are also not possible in Ruby
class Student
  def wat
    puts "#{@name} says WAT"

    # A Factory method to create a new generic student
    def self.generic_student
      new('Generic Student', 3, 'GenericPassword123')
    end

    # Private/protected methods are like switches- once declared,
    # all methods below will become private/protected.
    protected
    def secret_handshake
      # Internal code
    end
  end
end

# object_name.inspect allows us to view the characteristics of an object
# EX:// daisy.inspect would reveal her name, gpa and password
