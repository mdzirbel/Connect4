function in=getHumanPlayerMove(board)
    while 1
        try
            in=input('Enter your move ');
            if in>=1&&in<=7&&in==round(in)&&checkForAllowed(in,board)
                return
            end
        catch
        end
        fprintf('That was not a valid move. Try again.\n');
    end
end