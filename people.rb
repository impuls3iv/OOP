class Person
  attr_accessor :name
  def greet
    "Hi my name is #{name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in ruby is an object"
  end
end

# bob = Instructor.new
# bob.name = "bob"
# puts bob.name
# puts bob.teach
chris = Instructor.new
chris.name = "Chris"
puts chris.greet
christina = Student.new
puts christina.greet
puts chris.teach
puts christina.learn
