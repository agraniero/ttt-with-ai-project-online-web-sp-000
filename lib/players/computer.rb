module Players
  class Computer < Player
    def move(board)
      move = nil 
      
      if !board.taken?(5)
        move = '5'
      elsif board.turn_count ==1 
        move = '1'
      elsif board.turn_count ==2
        move = [1,3,7,9].detect {|index| !board.taken?(index)}.to_S
      elsif board.turn_count ==3 && (board.position(1) == board.position(9) || board.position(3) == board.position(7))
          move = '2'
      else
        Game::WIN_COMBINATIONS.detect do |combo|
          if combo.select {|i| board.position(i+1) == token}.size == 2 && combo.any?{|i| board.position(i+1) == " "}
            move = combo.select{|i| !board.taken?(i+1)}.first.to_i.+(1).to_s
          elsif 
    end
    
  end
end