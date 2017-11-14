function max=longestStreak(board,player)
    max=1;
    for i=1:7
        for j=1:6
            if board(j,i)==player
                streak=checkStar(board,i,j);
                if streak>max
                    max=streak;
                end
            end
        end
    end
end

function n=checkStar(board,x,y)
    try
        player=board(y,x);
        n=1;
        % Right
        if board(y,x+1)==player
            n=2;
            if board(y,x+2)==player
                n=3;
                if board(y,x+3)==player
                    n=4;
                    return
                end
            end
        end
        % UpRight
        if board(y+1,x+1)==player
            n=2;
            if board(y+2,x+2)==player
                n=3;
                if board(y+3,x+3)==player
                    n=4;
                    return
                end
            end
        end
        % Up
        if board(y+1,x)==player
            n=2;
            if board(y+2,x)==player
                n=3;
                if board(y+3,x)==player
                    n=4;
                    return
                end
            end
        end
        % UpLeft
        if board(y+1,x-1)==player
            n=2;
            if board(y+2,x-2)==player
                n=3;
                if board(y+3,x-3)==player
                    n=4;
                    return
                end
            end
        end
        % Left
        if board(y,x-1)==player
            n=2;
            if board(y,x-2)==player
                n=3;
                if board(y,x-3)==player
                    n=4;
                    return
                end
            end
        end
        % DownLeft
        if board(y-1,x-1)==player
            n=2;
            if board(y-2,x-2)==player
                n=3;
                if board(y-3,x-3)==player
                    n=4;
                    return
                end
            end
        end
        % Down
        if board(y-1,x)==player
            n=2;
            if board(y-2,x)==player
                n=3;
                if board(y-3,x)==player
                    n=4;
                    return
                end
            end
        end
        % DownRight
        if board(y-1,x+1)==player
            n=2;
            if board(y-2,x+2)==player
                n=3;
                if board(y-3,x+3)==player
                    n=4;
                    return
                end
            end
        end
            
    catch
        
    end
end