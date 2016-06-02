class Cat
  attr_accessor :name, :preffered_food, :meal_time

  #build cats
  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  #displays eating time
  def eats_at
    "#{@name} eats at #{@meal_time}"
  end

  #give info to user
  def meow
    "My name is #{name} and I like #{@preffered_food} at #{meal_time} O\'clock"
  end
end
#
laoshi = Cat.new('laoshi', 'fish', 12)
jazz = Cat.new('Jazz', 'wet food', 8)
james = Cat.new('James', 'chicken', 22)

puts laoshi.meow
puts jazz.meow
puts james.meow
