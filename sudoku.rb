class Sudoku
  attr_accessor :board

  def initialize(board_string)
    @board = board_string.split('').each_slice(9).to_a
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
  def possible_numbers_for_cell(i,j)
    return [] if @board[i,j] == '-'
    possible_numbers = []
    (1..9).each do |x|
      subsquare = is_possible_in_subsquare(i,j,num)
      row = is_possible_in_row(i,j,num)
      column = is_possible_in_column(i,j,num)
      possible_numbers << x if subsquare && row && column
    end
    possible_numbers
  end

  # Takes the gameboard and determines whether the number is possible in the grid
  def is_possible_in_subsquare(i,j,num)
    subsquare = get_subsquare(i,j)
    !subsquare.include?(num)
  end

  # Determines whether the number is possible in the row
  def is_possible_in_row(i,j,num)
    (0..8).each do |y|
      return false if @board[i][y] == num
    end
    true
  end

  # Determines whether the number is possible in the column
  def is_possible_in_column(i,j,num)
    (0..8).each do |x|
      return false if @board[x][j] == num
    end
    true
  end

  # Returns an array holding all numbers in the subsquare based on i, j position
  def get_subsquare(i,j)
    row_1 = board[j/3].slice(i/3..i/3 + 2)
    row_2 = board[j/3 + 1].slice(i/3..i/3 + 2)
    row_3 = board[j/3 + 2].slice(i/3..i/3 + 2)
    return row_1 + row_2 + row_3
  end
end