require 'byebug'
require 'colorize'
require 'colorized_string'
require_relative 'cursor'
require_relative 'board'

class Display
  attr_reader :cursor, :board

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end
  
  def render
    (0..7).each do |row|
      (0..7).each do |col|
        if @cursor.cursor_pos == [row,col]  
          if !@board.rows[row][col].is_a?(NullPiece) 
            print ' X '.colorize(:background => :green) if @cursor.selected == true
            print ' X '.colorize(:background => :red) if @cursor.selected == false
          else
            print '   '.colorize(:background => :green) if @cursor.selected == true
            print '   '.colorize(:background => :red) if @cursor.selected == false
          end
        elsif (row+col).odd?
          if !@board.rows[row][col].is_a?(NullPiece) 
            print ' X '.colorize(:background => :black)
          else
            print '   '.colorize(:background => :black)
          end
        else  
          if !@board.rows[row][col].is_a?(NullPiece) 
            print ' X '.colorize(:background => :white)
          else
            print '   '.colorize(:background => :white)
          end
        end
      end
      print "\n"
    end 
  end
  
end