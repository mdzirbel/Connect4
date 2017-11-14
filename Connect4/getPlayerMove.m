function i = getPlayerMove(player,first,board)
    %Checks whether to get the human player or computer player then gets
    %their move
    if player==first
        i=getHumanPlayerMove(board);
    else
        i=getComputerPlayerMove(board);
    end
end