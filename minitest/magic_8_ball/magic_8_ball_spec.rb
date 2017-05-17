# magic_8_ball_spec.rb

require "minitest/autorun"
require "minitest/spec"
require_relative "magic_8_ball"

describe Magic8Ball do
  describe "#ask" do
    it "returns an answer" do
      magic_8_ball = Magic8Ball.new
      assert_includes Magic8Ball::ANSWERS, magic_8_ball.ask("Is Minitest awesome?")
    end

    it "predefined answers is array" do
      assert_kind_of Array, Magic8Ball::ANSWERS
    end

    it "predefined answers is not empty" do
      refute_empty Magic8Ball::ANSWERS
    end

    it "raises error when question is number" do
      assert_raises "Question has invalid format." do
        magic_8_ball = Magic8Ball.new
        magic_8_ball.ask(1)
      end
    end
  end
end
