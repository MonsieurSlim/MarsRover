class ControlTower
  attr_reader :rover

  def initialize(rover)
    @rover = rover
  end

  def controls(commands)
    commands.each_char do |command|
      case command
        when 'L'
          rover.turn_left
        when 'R'
          rover.turn_right
        when 'M'
          rover.move
      end
    end
  end
end