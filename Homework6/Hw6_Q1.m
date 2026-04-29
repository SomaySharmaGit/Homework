clc, clearvars

f = @(x) x^3 + 4*x^2 - 10;

a = 1;
b = 2;

tolerance = 10^-4;
m = (a+b)/2;
pm = f(m);
p = [];
iterations = [];
i = 0;

while(abs(pm) > tolerance)
    p = [p,pm];
    iterations = [iterations, i];

    pa = f(a);

    if(sign(pa) ~= sign(pm))
        b = m;
    else
        a = m;
    end

    m = (a+b)/2;
    pm = f(m);
    disp(pm);
   
    i = i + 1;

end

plot(iterations, p, 'bo', LineStyle='-');
title('Root value vs Iterations');
xlabel('Iterations');
ylabel('Root value');
fprintf("The x-value of the root is: %f and it took %d iterations\n", m, i);