function i=getComputerPlayerMove(board)




    while 1
        i = randi([1 7],1,1);
        if checkForAllowed(i,board)
            return
        end
    end
    
end