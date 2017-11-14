clc;clear;

board = zeros(6,7);
first = randi([1 2],1,1);%Works
load Connect;
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:}])
%drawBoard(); %Graphics
while 1
	%Player 1 and 2�s original move order needs to be randomized
	move = getPlayerMove(1,first,board); %Input
    [board,moveY] = recordMove(1,move,board); %Logic
	Board = drawMove(move,moveY,redchip,Board); %Graphics
    if playerWon(board,1) %Win conditions
        displayWin(1); %Graphics
		break;
    end
    
    move = getPlayerMove(2,first,board); %Logic
    [board,moveY] = recordMove(2,move,board); %Logic
    Board = drawMove(move,moveY,blackchip,Board); %Graphics
	if playerWon(board,2) %Win conditions\
		displayWin(2); %Graphics
		break;
	end
end
