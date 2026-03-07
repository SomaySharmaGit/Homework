clc, clearvars

list = [10,5,2,5];

sum = 0;

for i=1:length(list)
    sum = sum + (1/list(i));
end

harmonic = length(list)/sum;

disp(harmonic);