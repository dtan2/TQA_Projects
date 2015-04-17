class Game

  attr_accessor :game_board,:player1,:player2,:moves_num


  def initialize
    #set default value of 2 if the space is blank
    @game_board = Hash.new
    @player1 = 'X'
    @player2 = 'O'
    game_moves =[3,8,2,5,7,1,9,6,4]
    @moves_num = game_moves.shuffle(radom: Random)

  end

end