WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

class TicTacToe
  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    result = ""
    divider = "-----------\n"
    result << " #{@board[0]} | #{@board[1]} | #{@board[2]} \n"
    result << divider
    result << " #{@board[3]} | #{@board[4]} | #{@board[5]} \n"
    result << divider
    result << " #{@board[6]} | #{@board[7]} | #{@board[8]} \n"
    print result
  end

  def input_to_index(input)
    index = input.to_i - 1
  end

  def move(index, character)
    @board[index] = character
  end

  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      true
    else
      false
    end
  end


end
