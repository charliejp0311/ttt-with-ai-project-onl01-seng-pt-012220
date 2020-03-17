module Players
  class Human < Player
    # your code here
    def move(board)
      ans = "0"
      until board.valid_move?(ans) do
        puts "Please enter a number (1-9):"
        ans = gets.chomp
      end
      if board.valid_move?(ans)
        board.update(ans, self)
      end
      ans
    end

  end
end
