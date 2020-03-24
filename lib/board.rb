class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(users_num)
    @cells[users_num.to_i - 1]
  end

  def full?
    turn_count == 9 ? true : false
  end

  def turn_count
<<<<<<< HEAD
    (@cells.select{|cell| cell == "X" || cell == "O"}.count)
=======
    @cells.select{|cell| cell == "X" || cell == "O"}.count
>>>>>>> 9f40fb0d4f5856a23cd7d2fcca070c3815e4b190
  end

  def taken?(pos)
    position(pos) == "X" || position(pos) == "O" ? true : false
  end

  def valid_move?(pos)
    pos.to_i > 0 && pos.to_i < 10 && taken?(pos) == false ? true : false
  end

  def update(pos, player)
    ## setting 'token' or mark based on turn_count
<<<<<<< HEAD
    if player.is_a?(Players::Human) && self.valid_move?(pos)
      mark = player.token
    else
      mark = "X"
    end
    @cells[pos.to_i - 1] = mark #used to get the code to pass now as player was being sent with no data later should be replaced with player.token
=======
    if player.is_a?(Player) || player.is_a?(Players::human)
      mark = player.token
    elsif turn_count.even?
      mark = "X"
    else
      mark = "O"
    end
    @cells[pos.to_i] = mark #used to get the code to pass now as player was being sent with no data later should be replaced with player.token
>>>>>>> 9f40fb0d4f5856a23cd7d2fcca070c3815e4b190
  end

end
