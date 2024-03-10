module GuessWord
class Question
  attr_reader :questions
  attr_reader :correct_answers

  def initialize(question = [])
    @questions = question
  end

  def get_question
    @correct_answers = @questions.sample
    return nil if @correct_answers.nil?

    @correct_answers.split('').shuffle.join
  end

  def submit_answer(point, answer)
    if answer != @correct_answers
      puts "  WRONG! Please Try Again"
    else
      @questions -= [@correct_answers]
      point.plus(point)
      puts "  CORRECT! Your point : #{point.value}"
    end
  end
end
end
