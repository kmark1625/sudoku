class Sudoku
  #Takes a board as a string in the format
  #you see in the puzzle file. Returns
  #something representing a board after
  #your solver has tried to solve it.
  def solve(board_string)
  end

  #Returns a boolean indicating whether
  #or not the provided board is solved.
  #The provided board will be in whatever
  #form `solve` returns.
  def solved?(board)
  end

  #Takes in a board in some form and
  #returns a string that's well formatted
  #for output to the screen. No `puts` here!
  #The provided board will be in whatever
  #form `solve` returns.
  def pretty_board(board)
  end

  #Takes in a board in some form and
  #returns a string in the same format
  #as you see in the puzzle file.
  #The provided board will be in whatever
  #form `solve` returns.
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