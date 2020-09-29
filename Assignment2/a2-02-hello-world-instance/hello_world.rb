# Question 2
# Test class for hello_world_instance folder
class HelloWorld
  def initialize(name)
    @name = name
  end

  def hello(name = 'World')
    "Hello, #{name}. My name is #{@name}!"
  end
end
