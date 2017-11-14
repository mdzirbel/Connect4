function i = getPlayerMove(player,first,notAllowed,blackBoard,blueBoard)
    %Checks whether to get the human player or computer player then gets
    %their move
    if player==first
        i=getHumanPlayerMove(notAllowed);
    else
        i=getComputerPlayerMove(blackBoard,blueBoard);
    end
end