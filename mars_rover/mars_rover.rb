# create Rover class
class Rover

  attr_accessor :name, :x_coordinate, :y_coordinate, :direction

# initialize location and direction properties
  def initialize(name, x_coordinate, y_coordinate, direction)
    @name         = name
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction    = direction
  end

# method to accept instruction and decide whether to tell the rover to move or turn
  def read_instruction
    puts "Earth to Mars Rovers. Earth to Mars Rovers. State your name and position please."
    puts "This is #{@name} at #{@x_coordinate} #{@y_coordinate} facing #{@direction}. Standby Mode. Awaiting next dispatch mission:"
    mission = gets.chomp
    @instructions = mission.split(//) # .split mission string into substrings and return an array
    @instructions.each do |instruction| # iterate over instructions array
      if instruction == "M"
        def move
      elsif instruction == "L"
        def turn
      elsif instruction == "R"
        def turn
      end
    end
  end

# method to affect rover's position and update the x or y coordinates
  def move(@direction, @x_coordinate, @y_coordinate)
    if @direction == N
      @y_coordinate += 1
    elsif @direction == E
      @x_coordinate += 1
    elsif @direction == S
      @y_coordinate -= 1
    else @direction == W
      @x_coordinate -= 1
    end
  end

# method to affect direction of the rover
  def turn(@direction, @instructions)
    if @direction == "N" && @instructions == "R"
      @direction = "E"
    elsif @direction == "N" && @instructions == "L"
      @direction == "W"
    elsif @direction == "E" && @instructions == "R"
      @direction == "S"
    elsif @direction == "E" && @instructions == "L"
      @direction == "N"
    elsif @direction == "S" && @instructions == "R"
      @direction == "W"
    elsif @direction == "S" && @instructions == "L"
      @direction == "E"
    elsif @direction == "W" && @instructions == "R"
      @direction == "N"
    else @direction == "W" && @instructions == "L"
      @direction == "S"
    end
  end

end

puts "Navigation complete. This is #{@name} at #{@x_coordinate} #{@y_coordinate} facing #{@direction}. Transmitting data... Transmission complete. Good-bye."

# instances of Rover class
rover1 = Rover.new("SpaceOddity", 1, 2, "N")
rover2 = Rover.new("SpaceCadet", 3, 3, "E")
