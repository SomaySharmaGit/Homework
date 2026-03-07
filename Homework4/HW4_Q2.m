clc, clearvars


f1 = 1;
f2 = 2;

n = 10;
counter = 1;

f = 0;

while counter<=n
    
    f = f1+f2;
    f1 = f2;
    f2 = f;

    counter = counter + 1;

    disp(f);
end

