clc, clearvars

x = 10; 
ans1 = area(x);
y = 60 / (2+pi);
ans2 = area(y);

fprintf("The area for a width of %f is %f and the area for width %f is %f", x, ans1, y, ans2);



function result = rectangle_length(rectangleWidth)
    result = 30/rectangleWidth - 1 - (pi/2);
end 

function result = area(width)
    length = rectangle_length(width);
    result = (length * width) + (pi * width);
end