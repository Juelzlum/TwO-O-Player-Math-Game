class Question 
  attr_reader :number1, :number2
  
  def initialize
    @number1 = rand(21)
    @number2 = rand(21)
    @sum = @number1 + @number2
  end 
  
  def qs
    "What does #{number1} + #{number2} = ?" 
  end

  def answer(input)
  @sum == input
  end
    

end


# q1 = Question.new
# puts q1
# puts q1.qs