require 'rspec'
require 'setup'
require_relative '../lib/Setup'


describe 'tig tag toe game' do
  it 'is a 3 x 3 matrix game board' do
       game = Game.new
    for i in 1..9 do
      expect(game.game_board[i]).to eq nil

    end
  end
  it 'has two player' do
    game = Game.new
    expect(game.player1 ).to eq 'X'
    expect(game.player2 ).to eq 'O'
  end

  it 'players randomly enter into the 3x3 board' do
    game = Game.new
    9.times do
    x = game.moves_num.pop.between?(1,9)
    expect(x).to eq true
    end
  end

  it 'both players fill in the board' do
    game = Game.new
    for i in 1..9 do
    var = 'O'if i.odd?
    var = 'X' if i.even?
    game.game_board.store(game.moves_num.pop,var)
    end
    # print game.game_board.inspect
  end

  it 'checking for winner every  entries' do
    game = Game.new

    for i in (1..9) do
      var = 'O' if i.even?
      var = 'X' if i.odd?

    game.game_board.store(game.moves_num.pop,var)
    # end
    # if i == 8

      wining_array = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

        wining_array .each do |ary|

          results = []

          for x in ary do
          results << game.game_board[x]
          end
             if results.compact.length == 3 && results.uniq.one?
              puts"#{results.inspect}"
              puts "winning combination #{ary}"
              @win = true
              puts "number of moves  #{i}"
              puts "Final game board #{game.game_board}"
              end
        end

      break if @win == true

  end

  end
   # end
end