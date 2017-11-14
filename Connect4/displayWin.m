function displayWin(player)
    if player==1
        winner='Red';
    else
        winner='Black';
    end
    fprintf('%s wins!\n',winner);
end