board = ["X", " ", " ", "X", " ", " ", "X", " ", " "]
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

def won?(board,index)
  if WIN_COMBINATIONS == true
    puts WIN_COMBINATIONS
  else
    false
  end
end


WIN_COMBINATIONS.each do |win_index|
  win_index.each do |position|
    if position[0] == "X" && position[1] == "X" && position[2] == "X"
      puts WIN_COMBINATIONS
    else
      false
    end
  end
end

won?
