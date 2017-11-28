function Board = drawMove(x,y,chip,Board)
    % Draws the most recent move to the board
    y=7-y; % Flips y so that it goes from bottom to top
    Board{y,x}=chip;
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:}])
end