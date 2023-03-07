class Game

def initialize
@name = name
@player1 = new Player.new('Player 1')
@player2 = new Player.new('Player 2')
end

def start 
  puts "New Game started! Welcome #{player1.name} & #{player2.name}"
end

def winner
  puts "#{player.name} wins with the score of #{player.lives}/3"
  puts "Game Over"
end

def score 
  if(@player1.dead) 
    winner(@player2)
  elsif(@player2.dead)
    winner(@player1)
  end
end

def turn
  @player1.newQuestion
  score
  @player2.newQuestion
  score
  puts 'new turn'
  turn
end

end



# def dead
#   @lives === 0
# end
