function move=getComputerPlayerMove(board,me)
    while 1 % First makes a random move in case the logic is undecided
        move = randi([1 7],1,1);
        if checkForAllowed(move,board)
            break;
        end
    end
    them = 1;
    if me ==1
        them = 2;
    end
    % Uses two for loops to check moves for how good they are, scoring them
    % based off of how long their longest in a row can be, and how long
    % their opponent's longest in a row can be in the next move.
    for i=1:7 % i is for my move
        maxScore = 1;
        if checkForAllowed(i,board)
            [testBoard,~] = recordMove(me,i,board);
            for j=1:7 % j is for their move
                if checkForAllowed(j,testBoard)
                    maxScoreJ = 1;
                    [testBoard,~] = recordMove(them,j,testBoard);
                    maxScoreJ = max(longestStreak(testBoard,them),maxScoreJ);
                    if longestStreak(testBoard,me)==4 % If I can win, move there
                        move=i;
                        return;
                    elseif maxScoreJ==4&&~(i==j) % If they could win, block them
                        move=j;
                        return;
                    end
                    score = longestStreak(testBoard,me);
                    if score>maxScore
                        maxScore=score;
                        move=i;
                    end
                end
            end
        end
    end
end
