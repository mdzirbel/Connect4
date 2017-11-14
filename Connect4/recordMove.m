function [board,moveY]=recordMove(player,move,board)
    for j=1:6
        if ~board(j,move)
            board(j,move)=player;
            moveY=j;
            return
        end
    end
end