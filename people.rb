class Student
  def learn
    puts "I get it!"
  end
end

class Instructor
  def teach
    "Everything in ruby is an object"
  end
end


stud = Student.new
stud.learn
