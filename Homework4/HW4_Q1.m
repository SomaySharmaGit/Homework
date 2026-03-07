clc, clearvars

min = -9;
max = 9;
step = 0.5;

x = min:step:max;
y = zeros(1, length(x));


for i=1:((abs(max-min)/step))+1
    if(x(i) < 0)
        y(i) = second(x(i));
    else
        y(i) = first(x(i));
    end


end

plot(x,y);


function result = first(x)
    result = -3*(x.^2) + 5;
end

function result = second(x)
    result = 3*(x.^2) + 5;
end