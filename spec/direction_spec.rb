require 'spec_helper'

RSpec.describe Direction do

  describe ".location" do
    it "returns an instance of the North class when given N" do
      expect(Direction.position("N")).to be_an_instance_of(Direction::North)
    end

    it "returns an instance of the South class when given S" do
      expect(Direction.position("S")).to be_an_instance_of(Direction::South)
    end

    it "returns an instance of the East class when given E" do
      expect(Direction.position("E")).to be_an_instance_of(Direction::East)
    end

    it "returns an instance of the West class when given W" do
      expect(Direction.position("W")).to be_an_instance_of(Direction::West)
    end

    it "returns nil when given any other value" do
      expect(Direction.position(" ")).to be_nil
    end
  end
end
