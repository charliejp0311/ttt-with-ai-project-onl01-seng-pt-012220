module Players
  class Human < Player
    # your code here
    def move(board)
      ans = "0"
<<<<<<< HEAD
      until board.valid_move?(ans) do
        puts "Please enter a number (1-9):"
        ans = gets.chomp
      end
      if board.valid_move?(ans)
        board.update(ans, self)
      end
      ans
=======
      if ans.strip.is_a?(Integer)
        until board.valid_move?(ans) do
          puts "Please enter a number (1-9):"
          ans = gets.chomp
          binding.pry
        end
        board.update(ans, self)
      end
>>>>>>> 9f40fb0d4f5856a23cd7d2fcca070c3815e4b190
    end

  end
end
