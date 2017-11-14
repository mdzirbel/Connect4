clc;clear;

blackBoard = [];
blueBoard = [];
first = setPlayerOrder();
drawBoard(); %Graphics
while 1
	%Player 1 and 2’s original move order needs to be randomized
	move = getPlayerMove(1,first); %Input
    recordMove(1,move); %Logic
	drawMove(move); %Graphics
    if playerWon(1,move) %Win conditions
        displayWin(1); %Graphics
		break;
    end
    
    move = getPlayerMove(2,first); %Logic
    recordMove(2,move); %Logic
    drawMove(move); %Graphics
	if playerWon(2,move) %Win conditions\
		displayLoss(2); %Graphics
		break;
	end
end
