#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]# Define your WIN_COMBINATIONS constant

top_row_win = [0,1,2]

def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    if board[win_index[0]] == "X" && board[win_index[1]] == "X" && board[win_index[2]] == "X" ||
      board[win_index[0]] == "O" && board[win_index[1]] == "O" && board[win_index[2]] == "O" ||
      return win_index
    end
  end
  false
end


WIN_COMBINATIONS.each do |win_index|
  win_index.each do |position|
    if position[0] == "X" && position[1] == "X" && position[2] == "X"
      return
    else
      false
    end
  end
end

position_taken?(board, index)

won?(board)
