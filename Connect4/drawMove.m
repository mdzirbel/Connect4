function Board = drawMove(x,y,chip,Board)
    y=7-y;
    Board{y,x}=chip;
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:}])
end