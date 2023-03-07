class Player
   attr_reader :name, :lives

  def initialize
    @name = name
    @lives = 3
  end

  def takeLives
    @lives - 1
  end

  def dead
    @lives === 0
  end

  def newQuestion
    new_question = Question.new
    askQuestion = new_question.qs
    print '> '
    @userChoice = stdin.gets.chomp
    if(new_question.answer(@userChoice.to_i)) 
      puts "You are correct!"
    else
      takeLives
      puts "You are Wack"
  end
end


end