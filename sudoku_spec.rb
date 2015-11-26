require_relative 'sudoku'

describe Sudoku do
  describe '#possible_numbers_for_cell' do
    it 'returns an array' do

    end

    it 'returns correct possible values for the cell' do

    end

    it 'returns an empty array if the board is already populated' do

    end
  end

  describe '#is_possible_in_subsquare' do

  end

  describe '#is_possible_in_row' do
    it 'returns false when the number exists in the row' do
      puzzle = Sudoku.new('')
      puzzle.board = [[6,'-',8,7,3,'-','-','-','-'],
                      [2,'-','-','-','-','-',4,6,'-'],
                      ['-','-','-','-',6,4,8,2,'-'],
                      ['-',8,'-','-','-',5,7,'-',1],
                      [9,'-','-',6,1,8,'-','-',4],
                      ['-',3,1,'-','-','-','-',8,'-'],
                      [8,6,'-',2,'-','-','-',3,9],
                      ['-',5,'-','-','-','-',1,'-','-'],
                      [1,'-','-',4,5,6,2,'-','-']]
      i = 3
      j = 4
      num = 1

      expect(puzzle.is_possible_in_column(i,j,num)).to be_falsey
    end

    it 'returns true when the number does not exist in the row' do
      puzzle = Sudoku.new('')
      puzzle.board = [[6,'-',8,7,3,'-','-','-','-'],
                      [2,'-','-','-','-','-',4,6,'-'],
                      ['-','-','-','-',6,4,8,2,'-'],
                      ['-',8,'-','-','-',5,7,'-',1],
                      [9,'-','-',6,1,8,'-','-',4],
                      ['-',3,1,'-','-','-','-',8,'-'],
                      [8,6,'-',2,'-','-','-',3,9],
                      ['-',5,'-','-','-','-',1,'-','-'],
                      [1,'-','-',4,5,6,2,'-','-']]
      i = 6
      j = 7
      num = 4

      expect(puzzle.is_possible_in_column(i,j,num)).to be_truthy
    end
  end

  describe '#is_possible_in_column' do
    it 'returns false when the number exists in the column' do
      puzzle = Sudoku.new('')
      puzzle.board = [[6,'-',8,7,3,'-','-','-','-'],
                      [2,'-','-','-','-','-',4,6,'-'],
                      ['-','-','-','-',6,4,8,2,'-'],
                      ['-',8,'-','-','-',5,7,'-',1],
                      [9,'-','-',6,1,8,'-','-',4],
                      ['-',3,1,'-','-','-','-',8,'-'],
                      [8,6,'-',2,'-','-','-',3,9],
                      ['-',5,'-','-','-','-',1,'-','-'],
                      [1,'-','-',4,5,6,2,'-','-']]
      i = 1
      j = 2
      num = 8

      expect(puzzle.is_possible_in_column(i,j,num)).to be_falsey
    end

    it 'returns true when the number does not exist in the column' do
      puzzle = Sudoku.new('')
      puzzle.board = [[6,'-',8,7,3,'-','-','-','-'],
                      [2,'-','-','-','-','-',4,6,'-'],
                      ['-','-','-','-',6,4,8,2,'-'],
                      ['-',8,'-','-','-',5,7,'-',1],
                      [9,'-','-',6,1,8,'-','-',4],
                      ['-',3,1,'-','-','-','-',8,'-'],
                      [8,6,'-',2,'-','-','-',3,9],
                      ['-',5,'-','-','-','-',1,'-','-'],
                      [1,'-','-',4,5,6,2,'-','-']]
      i = 1
      j = 2
      num = 9

      expect(puzzle.is_possible_in_column(i,j,num)).to be_truthy
    end
  end
end