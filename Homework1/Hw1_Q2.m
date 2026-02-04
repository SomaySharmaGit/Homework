clc, clearvars;

x = exp(1);
y = pi;
print(x,y);

temp = x;
x = y;
y = temp;
print(x,y)

function print(x,y)
fprintf('The value of x is %4.2f and the value of y is %4.2f\n', x, y);
end