function allowed = checkForAllowed(move,board)
    notAllowed = board(6,:);
    allowed = 0;
    if ~notAllowed(move)
        allowed = 1;
    end
end