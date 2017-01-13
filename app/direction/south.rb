class Direction::South

  def turn_left
    Direction::East.new
  end

  def turn_right
    Direction::West.new
  end

  def move(current_position)
    x = Integer(current_position[0])
    y = Integer(current_position[1]) - 1

    [x, y]
  end

  def to_s
    "S"
  end

end