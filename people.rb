class Person
  attr_accessor :f_name, :l_name

  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
  def greet
    "Hi my name is #{@first_name} #{@last_name}"
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
#chris = Instructor.new('chris', 'jones')

#puts chris.greet
