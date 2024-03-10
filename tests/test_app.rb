require 'minitest/autorun'
require_relative '../guess-word'


class Testpoint< Minitest::Test 
   
    def test_point
      point = GuessWord::Point.new(0)
    end

    def test_question
      question = GuessWord::Question.new
    end

    def text_word
      word = GuessWord::Word.new
    end

  def test_point
    point = GuessWord::Point.new(0)
    assert_equal point.value = 0, 0
    
  end
end
