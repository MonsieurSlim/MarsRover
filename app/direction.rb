module Direction
  def self.position(direction)
    case direction
      when 'N'
        Directions::NORTH.new
      when 'E'
        Directions::EAST.new
      when 'W'
        Directions::WEST.new
      when 'S'
        Directions::SOUTH.new
    end
  end
end