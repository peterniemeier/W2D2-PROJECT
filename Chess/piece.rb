require_relative 'slidable'
#require_relative 'steppable'

class Piece
  attr_reader :color, :board, :pos
  
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    x,y = @pos
    @board.rows[x][y] = self
  end
  
  def add_pos(x,y,res)

  end
  
  
  def moves
    res = []
    possible = move_dirs # 'both' or 'diag' or 'cross'
    if possible == 'cross' || 'both'
      x, y = @pos
      while x > 0
        #Upper position
        x = x - 1
        #result += add_pos(x,y,[])
        break if @board.rows[x][y].color == @color
        if @board.rows[x][y].color != @color
          res << [x,y]
          break
        else
          res << [x,y]
        end

      end
      
      x, y = @pos
      while x < 7
        #Lower position
        x = x + 1
        #result += add_pos(x,y,[])
        break if @board.rows[x][y].color == @color
        if @board.rows[x][y].color != @color
          res << [x,y]
          break
        else
          res << [x,y]
        end

      end
      
      x, y = @pos
      while y > 0
        #Left position
        y = y - 1
        #result += add_pos(x,y,[])
        break if @board.rows[x][y].color == @color
        if @board.rows[x][y].color != @color
          res << [x,y]
          break
        else
          res << [x,y]
        end

      end
      
      x, y = @pos
      while y < 7
        #Right position
        y = y + 1
        #result += add_pos(x,y,[])
        break if @board.rows[x][y].color == @color
        if @board.rows[x][y].color != @color
          res << [x,y]
          break
        else
          res << [x,y]
        end

      end
    end
    if possible == 'diag' || 'both'
    end
    # elsif possible == diag
    # 
    # else
    #   possible == both
    res
  end
  
  def to_s
    
  end
  
  def empty?
    
  end
  
  def pos=(val)
    
  end
  
  def symbol
    
  end
  
  private
  
  def move_into_check?(end_pos)
    
  end
  
end

class Rook < Piece
  include Slidable
  
  # def move_dirs
  # 
  # end
  # 
end

class Bishop < Piece
  include Slidable

end

class Queen < Piece
  include Slidable

end

class King < Piece
  #include Steppable

end

class Knight < Piece
  #include Steppable

end