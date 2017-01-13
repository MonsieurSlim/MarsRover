class Direction::East

  def turn_left
    Direction::North.new
  end

  def turn_right
    Direction::South.new
  end

  def move(current_position)
    x = Integer(current_position[0]) + 1
    y = Integer(current_position[1])

    [x, y]
  end

  def to_s
    "E"
  end

end