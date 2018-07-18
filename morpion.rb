class BoardCase
  @@num = 0
  attr_accessor :pos, :value
  def initialize
    @pos = @@num
    @@num += 1
  end
  

end

class Board
  include Enumerable
  attr_accessor :tab 

  def initialize
    @tab = Array.new(3){Array.new(3)}
    @tab.each_index do |i|
      j = 0
      while j != 3
        @tab[i][j] = BoardCase.new
        j += 1
      end
  end
end
end


class Player
  attr_accessor :nom, :value  
  def initialize
    @nom = gets.chomp
    @value = gets.chomp
  end
end 


class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @plateau = Board.new
  end
end

  toto = Game.new
