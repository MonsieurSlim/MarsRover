require 'spec_helper'

describe Direction::North do
  let(:subject) { Direction::North.new }

  describe ".turn_left" do
    it "returns West" do
      expect(subject.turn_left).to be_an_instance_of(Direction::West)
    end
  end

  describe ".turn_right" do
    it "returns East" do
      expect(subject.turn_right).to be_an_instance_of(Direction::East)
    end
  end

  describe ".move" do
    context "with current position at (0, 0)" do
      it "returns (0, 1)" do
        expect(subject.move([0, 0])).to eq([0, 1])
      end
    end
  end

  describe ".to_s" do
    it "returns N" do
      expect(subject.to_s).to eq("N")
    end
  end
end
