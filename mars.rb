 class Rover #define rover as a class

  attr_accessor :xloc, :yloc, :direct, :grid_size_x, :grid_size_y

  #collects original info about position, direction, and grid size
  def initialize(xloc, yloc, direct, grid_size_x, grid_size_y) #initialize rover with position information
    @xloc = xloc #initial rover x position
    @yloc = yloc #initial rover y position
    @direct = direct #initial direction N E S W
    @grid_size_x = grid_size_x #define maxX of grid
    @grid_size_y = grid_size_y #define maxY of grid
  end

  #provides info on where rover is and checks to see if on grid
  def location
    #checks to see if rover is on grid
    if @xloc > @grid_size_x || @yloc > @grid_size_y
      "You put your rover off the grid"
    else #if rover is on grid, give coordinates
      "rover is at #{@xloc}, #{@yloc} on a grid of #{@grid_size_x} by #{@grid_size_y}"
    end
  end

  def heading #which way the rover faces
    "rover is pointed #{@direct}"
  end

  #Method for moving rover M is move forward 1 point, L R are rotate 90 degrees
  def move(movement_of_rover)

    if movement_of_rover == "M" && @direct == "N" #increase Y by 1 is input is M and position is N
      @yloc += 1
    elsif movement_of_rover == "M" && @direct == "S" #decrease Y by 1 is input is M and position is S
      @yloc -= 1
    elsif movement_of_rover == "M" && @direct == "E" #increase X by 1 is input is M and position is E
      @xloc += 1
    elsif movement_of_rover == "M" && @direct == "W" #dncrease Y by 1 is input is M and position is W
      @xloc -= 1
    else
      puts "I think something went wrong here..."
    end
    puts "Rovey is now at #{xloc} : #{yloc}"
  end
  #--------end move method


  #reassigns rotation state
  def rotator(rotate)

    #rotating left
    if rotate == "L" && @direct == "N"
      @direct = "W"
    elsif rotate == "L" && @direct == "W"
      @direct = "S"
    elsif rotate == "L" && @direct == "S"
      @direct = "E"
    elsif rotate == "L" && @direct == "E"
      @direct = "N"
    end

    #rotating right
    if rotate == "R" && @direct == "N"
      @direct = "E"
    elsif rotate == "R" && @direct == "E"
      @direct = "S"
    elsif rotate == "R" && @direct == "S"
      @direct = "W"
    elsif rotate == "R" && @direct == "W"
      @direct = "N"
    end

    puts "Rovey is facing #{@direct}" #changed from 'rotate' to @direct

  end

end

#ask for plateu size, add to array, and load into initialize variables
puts "What is your plateu size in (X Y)"
mapXY = gets.chomp!
my_arr = mapXY.split(' ')
grid_size_x = my_arr[0].to_i
grid_size_y = my_arr[1].to_i

#get initializing variable for first rover
puts "What is the starting position of Rovey the Rover (X Y)"
locXY = gets.chomp!
loc_arr = locXY.split(' ')
xloc = loc_arr[0].to_i
yloc = loc_arr[1].to_i

puts "Define Rovey's initial direction (N E S W)"
direct = gets.chomp!


#get initializing info for second rover
puts "What is the starting position of Jonny the Rover (X Y)"
locXY2 = gets.chomp!
loc_arr2 = locXY2.split(' ')
xloc2 = loc_arr2[0].to_i
yloc2 = loc_arr2[1].to_i

puts "Define Jonny's initial direction (N E S W)"
direct2 = gets.chomp!

#instantiate first rover
rovey = Rover.new(xloc, yloc, direct, grid_size_x, grid_size_y)
puts rovey.location
puts rovey.heading

#instantiate second rover
jonny = Rover.new(xloc2, yloc2, direct2, grid_size_x, grid_size_y)
puts jonny.location
puts jonny.heading

#the loop to get user input to move rovey
rov_input_arr = []
rov_input_arr2 = []
while rov_input_arr != "end"
  puts "Choose a direction or movement M L or R for Rovey"
  rov_input_arr = gets.chomp!
  puts "Choose a direction or movement M L or R for Jonny"
  rov_input_arr2 = gets.chomp!

##Parsing the individual characters

  rov_input_arr = rov_input_arr.split('')
  rov_input_arr2 = rov_input_arr2.split('')


#for loop to access each index of rov_input_arr for Rovey
for i in 0..rov_input_arr.length
  if rov_input_arr[i] == "L" || rov_input_arr[i] == "R"
    puts rovey.rotator(rov_input_arr[i])
  elsif rov_input_arr[i] == "M"
    puts rovey.move(rov_input_arr[i])
  end #end if statement
end #end for loop

#for loop to access each index of rov_input_arr for Jonny
for i in 0..rov_input_arr2.length
  if rov_input_arr2[i] == "L" || rov_input_arr2[i] == "R"
    puts jonny.rotator(rov_input_arr2[i])
  elsif rov_input_arr2[i] == "M"
    puts jonny.move(rov_input_arr2[i])
  end #end if statement
end #end for loop






end #end class

# puts "Map X size"
# mapX = gets.chomp!.to_i
# puts "Map Y size"
# mapY = gets.chomp!.to_i

#
# puts "Rover starting X val"
# start_x = gets.chomp!.to_i
# puts "Rovers starting Y val"
# start_y = gets.chomp!.to_i
# puts "Rovers initial direction"
# direction = gets.chomp!
#
#
# rover = Rover.new(start_x, start_y, direction, mapX, mapY)
# puts rover.location
# puts rover.heading
#
# puts "Which way do you want to turn?"
# rotation_direct = gets.chomp!
# rover.rotator(rotation_direct)
# puts rover.heading
