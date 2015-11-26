class Sudoku
  attr_reader :board

  def initialize(board_string)
    @board = board_string.each_slice(9).to_a
  end

  def solve(board_string)
  end

  def solved?(board)
  end

  def pretty_board(board)
  end

  def board_to_string(board)
  end

  # Loops through 1-9 and returns an array of possible numbers for that cell
  def self.possible_numbers_for_cell(board,i,j)
    possible_numbers = []
    (1..9).each do |x|
      subsquare = is_possible_in_subsquare(board,i,j,num)
      row = is_possible_in_row(board,i,j,num)
      column = is_possible_in_column(board,i,j,num)
      possible_numbers << x if subsquare && row && column
    end
    possible_numbers
  end

  # Takes the gameboard and determines whether the number is possible in the grid
  def self.is_possible_in_subsquare(board,i,j,num)

  end

  # Determines whether the number is possible in the row
  def self.is_possible_in_row(board,i,j,num)
    (0..8).each do |x|
      return false if board[x][j] == num
    end
    true
  end

  # Determines whether the number is possible in the column
  def self.is_possible_in_column(board,i,j,num)
    (0..8).each do |y|
      return false if board[i][y] == num
    end
    true
  end
end