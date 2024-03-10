module GuessWord
class Word
  attr_reader :words

  def initialize(file_name)
    @words = open_file(file_name)
  end

  private

  def open_file(file_name)
    File.open(file_name, 'r').map(&:chop)
  rescue StandardError
    []
  end
end
end
