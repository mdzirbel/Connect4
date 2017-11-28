function [board,moveY]=recordMove(player,move,board)
    % This function assumes that the column is available, and checks up the
    % column until it reaches the first available spot, then places the
    % move there, and passes back the new board as well as the row it
    % placed the move in, for future use.
    for j=1:6
        if ~board(j,move)
            board(j,move)=player;
            moveY=j;
            return
        end
    end
end