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
  end
  #--------end move method


  #reassigns rotation state
  def rotator(rotate)
    if rotate == "L"
      case rotate
      when @direct == "N"
        @direct = "W"
      when @direct == "W"
        @direct = "S"
      when @direct == "S"
        @direct = "E"
      when @direct == "E"
        @direct = "N"
      end #end L case
    elsif rotate == "R"
      case rotate
      when @direct == "N"
        @direct = "E"
      when @direct == "E"
        @direct = "S"
      when @direct == "S"
        @direct = "W"
      when @direct == "W"
        @direct = "N"
      end #end L case
    end
  end

end

# puts "Define the maxX of grid (initial is 0, 0)"
# maxX = gets.chomp!
# puts "Define the maxY of grid (initial is 0, 0)"
# maxY = gets.chomp!
# puts "What is the starting xlocation of rover"
# start_xloc = gets.chomp!
# puts "What is the starting ylocation of rover"
# start_yloc = gets.chomp!
# puts "What is the initial direction of rover N E S W"
# start_direction = gets.chomp!

#rovey = Rover.new(start_xloc, start_yloc, start_direction)
