require_relative "rover"
require_relative "control_tower"


class MarsRover

  def commands
    array = []
    File.open('public/commands.txt').each_line do |line|
      array << line
    end
    array
  end

  def steer
    grid_boundary = commands[0].split(" ")
    position = commands[1].split[0, 2]
    direction = Direction.position(commands[1].split[2])
    rover = Rover.new(direction, position, grid_boundary)
    ControlTower.new(rover).controls(commands[2])
    rover
  end
end

a = MarsRover.new
puts "**********"
puts a.steer
puts "**********"

