module Slidable
  
  def move_dirs
    if self.is_a?(Rook)
      return 'cross'
    elsif self.is_?(Bishop)
      return 'diag'
    else
      return 'both'
    end
  end
  
end