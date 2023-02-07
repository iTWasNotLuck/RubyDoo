def board 
    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
end

#blank board showing in console
def display_board(board)
    puts  "#{board[0]}  | #{board[1]} | #{board[2]}" 
    puts "-----------"
    puts  "#{board[3]}  | #{board[4]} | #{board[5]}" 
    puts "-----------"
    puts "#{board[6]}  | #{board[7]} | #{board[8]}" 
end

board = board()
display_board(board)

def user_input_index(user_input)
    user_input_to.i - 1
end

def move(board, index, player)
    board[index = player]
end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
return false
    else 
        return true
    end
end

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
        return true
    end
end
