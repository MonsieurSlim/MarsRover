require 'spec_helper'

describe Direction::East do
  let(:subject) { Direction::East.new }

  describe ".turn_left" do
    it "returns North" do
      expect(subject.turn_left).to be_an_instance_of(Direction::North)
    end
  end

  describe ".turn_right" do
    it "returns South" do
      expect(subject.turn_right).to be_an_instance_of(Direction::South)
    end
  end

  describe ".move" do
    context "with current position at (0, 0) and boundary (5, 5)" do
      it "returns (1, 0)" do
        expect(subject.move([0, 0], [5, 5])).to eq([1, 0])
      end
    end
  end

  describe ".to_s" do
    it "returns E"do
      expect(subject.to_s).to eq("E")
    end
  end
end