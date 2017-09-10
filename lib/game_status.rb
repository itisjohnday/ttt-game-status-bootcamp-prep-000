# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [1,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # 1st Diagonal
  [2,4,6]  # 2nd Diagonal
]
