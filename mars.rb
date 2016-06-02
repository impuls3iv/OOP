 class Rover #define rover as a class

  def initialize(xloc, yloc, direct, grid_size_x, grid_size_y) #initialize rover with position information
    @xloc = xloc #initial rover x position
    @yloc = yloc #initial rover y position
    @direct = direct #initial direction N E S W
    @grid_size_x = grid_size_x #define maxX of grid
    @grid_size_y = grid_size_y #define maxY of grid
  end

  def location #where the rover is
    "rover is at #{@xloc}, #{@yloc} on a grid of "
  end

  def heading #which way the rover faces
    "rover is pointed #{@direct}"
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
