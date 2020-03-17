module Players
  class Human < Player
    # your code here
    def move(board)
      ans = "0"
      until board.valid_move?(ans) do
        binding.pry
        puts "Please enter a number (1-9):"
        ans = gets.chomp
        binding.pry
      end
      if board.valid_move?(ans)
        board.update(ans, self)
        binding.pry
      end
      ans
    end

  end
end
