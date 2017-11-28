clc;clear;
warning('off','images:imshow:magnificationMustBeFitForDockedFigure'); % Suppresses the warning when you dock the game
board = zeros(6,7);
movesPlayed = 0;
first = randi([1 2],1,1); % This randomizes the turn order
% Draw the board
load Connect;
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:}])
while 1 % This is the main loop for playing the game
    % These next few lines of code are for getting the first player's move
	move = getPlayerMove(1,first,board); % This gets the player's move, and also includes the logic to decide which player to get
    [board,moveY] = recordMove(1,move,board); % This actually does the move, and also finds the height of the move
	Board = drawMove(move,moveY,redchip,Board); % This updates the screen to include the move
    if playerWon(board,1) % This checks if anyone got 4 in a row
        displayWin(1); % This prints out who won
		break; % Breaks out of the loop to end the game
    end
    
    % These lines of code are the same as those above it, but with player 2 instead of player 1
    move = getPlayerMove(2,first,board);
    [board,moveY] = recordMove(2,move,board);
    Board = drawMove(move,moveY,blackchip,Board);
    if playerWon(board,2)
		displayWin(2);
		break;  
    end
    movesPlayed = movesPlayed +2;
    if movesPlayed == 42
        displayWin(0) % Displays that there was a tie
        break;
    end
end
