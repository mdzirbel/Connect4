function in=getHumanPlayerMove(board)
    % Loops until they click in a valid column
    while 1
        try
            % Gets where the person clicks
            [x,~]=ginput(1);
            in=ceil(x/101);
            % Checks to see if the column they selected is allowed, and
            % returns the column if it is
            if in>=1&&in<=7&&in==round(in)&&checkForAllowed(in,board)
                return
            end
        catch
        end
        % If they didn't click a valid place, tells them to try again
        fprintf('That was not a valid move. Try again.\n');
    end
end

