clc,clearvars

P = 1500;
n = 20 * 12;

f = @(i) (P/i) * ((1+i)^n - 1);

expected = 750000;
I = 10^-4;
oldI = I;

fVal = f(I);

while(fVal < expected)
    
    oldI = I;
    I = I + I;
    fVal = f(I);

end

tolerance = 10^-5;


f = @(i) (P/i) * ((1+i)^n - 1) - expected;

a = oldI;
b = I;
tolerance = 10^-4;
m = (a+b)/2;
pm = f(m);



while(abs(pm) > tolerance)

    pa = f(a);

    if(sign(pa) ~= sign(pm))
        b = m;
    else
        a = m;
    end

    m = (a+b)/2;
    pm = f(m);
    disp(pm);
   

end

fprintf("The interest rate per month should be %f%% \n", m * 100);
