require_relative 'guess-word'

words = GuessWord::Word.new('data/noun.txt').words
question_pack = GuessWord::Question.new(words)
point = GuessWord::Point.new(0)

until question_pack.questions.empty?
  puts "Guess the word : " + "#{question_pack.get_question}\n"
  puts "Answer         : "
  answer = gets
  puts "#{question_pack.submit_answer(point, answer.chomp)}\n"
end
