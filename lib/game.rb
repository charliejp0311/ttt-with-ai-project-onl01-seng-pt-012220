class Game
  attr_accessor :board, :player_1, :player_2, :win_ans, :win_comb
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], #bottom row
    [0,3,6], # left column
    [1,4,7], # middle column
    [2,5,8], # right column
    [0,4,8], # left to right diagonal
    [2,4,6]  # right to left diagonal
  ]
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = nil)
    if board.is_a?(Board)
      @board = board
    else
      @board = Board.new
    end
    @player_1 = player_1
    @player_2 = player_2
  end

  def current_player
    if @board.turn_count.even?
      @player_1
    else
      @player_2
    end
  end

  def won?
    @win_ans = false
    @win_comb = nil
    WIN_COMBINATIONS.each do |combination|
      # if @board.cells[combination[0]] == "x" || @board.cells[combination[0]] == "O"
        if @board.cells[combination[0]] == @board.cells[combination[1]] && @board.cells[combination[0]] == @board.cells[combination[2]] && @board.taken?(combination[0])
          @win_ans = true
          @win_comb = combination
        end
      # end
    end
    @win_ans
    @win_comb
  end

  def draw?
    @board.full? && !won?
  end

  def over?
    draw? || won?
  end

  def winner
    if over? && @board.cells[@win_comb[0]] != " "
      @board.cells[@win_comb[0]]
    else
      nil
    end
  end

  def turn
      current_player.move(@board)
  end

  def play
    until over?
      turn
    end
  end

end
