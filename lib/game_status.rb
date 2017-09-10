# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # 1st Diagonal
  [2,4,6]  # 2nd Diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    #print combination
    if draw?(board) == true
      return false
    end

    if board.all? {|i| i == " "}
      return false
    end

    x_count = 0
    o_count = 0
    combination.each do |index|
      if board[index] == 'X'
        x_count += 1
        if x_count == 3
          return combination
        end
      end
      if board[index] == 'O'
        o_count += 1
        if o_count == 3
          return combination
        end
      end
    end
  end
end

def full?(board)
  if board.any? {|i| i == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    return false
  end
end
