function allowed = checkForAllowed(move,notAllowed)
    allowed = 0;
    if ~notAllowed(move)
        allowed = 1;
    end
end