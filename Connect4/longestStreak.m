function max=longestStreak(board,player)
    % For all positions played in by the given player, checks the length of
    % the star around it
    max=1;
    for i=1:7
        for j=1:6
            if board(j,i)==player
                streak=checkStar(board,i,j);
                if streak>max
                    max=streak;
                    if max==4
                        return;
                    end
                end
            end
        end
    end
end

function n=checkStar(board,x,y) 
    % Goes in all 8 directions away from the point, until it reaches one
    % where the player in the point given is not the one in the direction
    % it is checking, then returns the longest direction out from the point
    % given. This uses try/catch to avoid errors when it ends up with
    % indexes outside of the board, instead of checking for them
    % directly.
    player=board(y,x);
    a=1;
    b=1;
    n=1;
    try
        % Right
        if board(y,x+1)==player
            a=2;
            if board(y,x+2)==player
                b=3;
                if board(y,x+3)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % UpRight
        if board(y+1,x+1)==player
            a=2;
            if board(y+2,x+2)==player
                b=3;
                if board(y+3,x+3)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % Up
        if board(y+1,x)==player
            a=2;
            if board(y+2,x)==player
                b=3;
                if board(y+3,x)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % UpLeft
        if board(y+1,x-1)==player
            a=2;
            if board(y+2,x-2)==player
                b=3;
                if board(y+3,x-3)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % Left
        if board(y,x-1)==player
            a=2;
            if board(y,x-2)==player
                b=3;
                if board(y,x-3)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % DownLeft
        if board(y-1,x-1)==player
            a=2;
            if board(y-2,x-2)==player
                b=3;
                if board(y-3,x-3)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % Down
        if board(y-1,x)==player
            a=2;
            if board(y-2,x)==player
                b=3;
                if board(y-3,x)==player
                    n=4;
                    return
                end
            end
        end
    catch
    end
    try
        % DownRight
        if board(y-1,x+1)==player
            a=2;
            if board(y-2,x+2)==player
                b=3;
                if board(y-3,x+3)==player
                    n=4;
                    return
                end
            end
        end 
    catch
    end
    if b==3
        n=3;
    elseif a==2
        n=2;
    end
end