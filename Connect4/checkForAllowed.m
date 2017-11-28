function allowed = checkForAllowed(move,board)
    % This works because the open spaces on the board are 0 and the other
    % spaces are 1 or 2. It uses the top row to check, because that fills
    % up last.
    notAllowed = board(6,:);
    allowed = 0;
    if ~notAllowed(move) 
        allowed = 1;
    end
end