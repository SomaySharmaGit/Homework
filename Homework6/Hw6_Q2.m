clc, clearvars

f = @(x) cos(x) - x;
fPrime = @(x) -sin(x) - 1;
x1 = 0.74;

tolerance = 10^-10;
fValue = f(x1);

i=0;

values = [x1];
iterations = [0];

while(abs(fValue) > tolerance)

    i = i + 1;

    x1 = x1 - (f(x1)/fPrime(x1));
    fValue = f(x1);

    values = [values, x1];
    iterations = [iterations, i];

    fprintf("The x-value of the root is: %f and it took %d iterations\n", x1, i);
end


plot(iterations, values, 'bo', LineStyle='-');
title('Root value vs Iterations');
xlabel('Iterations');
ylabel('Root value');
