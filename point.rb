module GuessWord
class Point
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def plus(point)
    point.value += 1
  end
end
end
