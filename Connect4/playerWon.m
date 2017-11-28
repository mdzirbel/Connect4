function i=playerWon(board,player)
    % Checks if the given player just won
    i=0;
    if longestStreak(board,player)==4
        i=1;
    end
end
