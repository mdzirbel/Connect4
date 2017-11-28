function displayWin(player)
    % Turns the number of the player into their color
    if player==1
        winner='Red';
    elseif player ==2
        winner='Black';
    end
    
    % Displays who won, or if there was a tie
    if winner==0
        fprintf('Tie!');
    else
        fprintf('%s wins!\n',winner);
    end
end