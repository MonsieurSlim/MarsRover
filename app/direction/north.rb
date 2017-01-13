class Direction::North

  def turn_left
    Direction::West.new
  end

  def turn_right
    Direction::East.new
  end

  def move(current_position)
    x = Integer(current_position[0])
    y = Integer(current_position[1]) + 1

    [x, y]
  end

  def to_s
    "N"
  end
end