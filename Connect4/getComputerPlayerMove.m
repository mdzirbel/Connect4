function i=getComputerPlayerMove(blackBoard,blueBoard,notAllowed)
    while 1
        i = randi([1 7],1,1);
        if checkForAllowed(i,notAllowed)
    end
    
end