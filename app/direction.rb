module Direction
  def self.position(direction)
    case direction
      when 'N'
        Direction::North.new
      when 'E'
        Direction::East.new
      when 'W'
        Direction::West.new
      when 'S'
        Direction::South.new
    end
  end

  class East

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

  class West

    def turn_left
      Direction::South.new
    end

    def turn_right
      Direction::North.new
    end

    def move(current_position)
      x = Integer(current_position[0]) - 1
      y = Integer(current_position[1])

      [x, y]
    end

    def to_s
      "W"
    end
  end

  class North

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

  class South

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
end