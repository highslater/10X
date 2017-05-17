# magic_8_ball_test.rb

require 'minitest/autorun'
require_relative "magic_8_ball"

class MagicBallTest < Minitest::Test

  def test_ask_returns_an_answer
    magic_ball = Magic8Ball.new
    assert_includes Magic8Ball::ANSWERS, magic_ball.ask("Is Minitest awesome ?")
  end

  def test_predefined_answers_is_array
    assert_kind_of Array, Magic8Ball::ANSWERS
  end

  def test_predefined_answers_is_not_empty
    refute_empty Magic8Ball::ANSWERS
  end

  def test_raises_error_when_question_is_a_number
    assert_raises "Question has an invalid format" do
      magic_8_ball = Magic8Ball.new
      magic_8_ball.ask(1)
    end
  end




end
