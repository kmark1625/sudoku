require_relative 'sudoku'

describe Sudoku do
  before do
    @puzzle = Sudoku.new('')
    @puzzle.board = [[6,'-',8,7,3,'-','-','-','-'],
                    [2,'-','-','-','-','-',4,6,'-'],
                    ['-','-','-','-',6,4,8,2,'-'],
                    ['-',8,'-','-','-',5,7,'-',1],
                    [9,'-','-',6,1,8,'-','-',4],
                    ['-',3,1,'-','-','-','-',8,'-'],
                    [8,6,'-',2,'-','-','-',3,9],
                    ['-',5,'-','-','-','-',1,'-','-'],
                    [1,'-','-',4,5,6,2,'-','-']]
  end

  describe '#possible_numbers_for_cell' do
    it 'returns an array' do
      i = 0
      j = 0

      expect(@puzzle.possible_numbers_for_cell(i,j)).to be_an_instance_of(Array)
    end

    it 'returns an empty array if a value exists in the cell' do
      i = 0
      j = 0

      expect(@puzzle.possible_numbers_for_cell(i,j)).to eq([])
    end

    it 'returns correct possible numbers for the cell' do
      i = 0
      j = 1

      expect(@puzzle.possible_numbers_for_cell(i,j)).to eq([3,5,7])
    end
  end

  describe '#is_possible_in_subsquare' do
    it 'returns false when the number exists in the subsquare' do
      i = 1
      j = 2
      num = 8

      expect(@puzzle.is_possible_in_subsquare(i,j,num)).to be_falsey
    end
  end

  describe '#is_possible_in_subsquare' do
    it 'returns true when the number does not exist in the subsquare' do
      i = 1
      j = 2
      num = 9

      expect(@puzzle.is_possible_in_subsquare(i,j,num)).to be_truthy
    end
  end

  describe '#is_possible_in_row' do
    it 'returns false when the number exists in the row' do
      i = 3
      j = 4
      num = 7

      expect(@puzzle.is_possible_in_column(i,j,num)).to be_falsey
    end

    it 'returns true when the number does not exist in the row' do
      i = 6
      j = 6
      num = 5

      expect(@puzzle.is_possible_in_column(i,j,num)).to be_truthy
    end
  end

  describe '#is_possible_in_column' do
    it 'returns false when the number exists in the column' do
      i = 1
      j = 2
      num = 8

      expect(@puzzle.is_possible_in_column(i,j,num)).to be_falsey
    end

    it 'returns true when the number does not exist in the column' do
      i = 1
      j = 2
      num = 9

      expect(@puzzle.is_possible_in_column(i,j,num)).to be_truthy
    end
  end
end