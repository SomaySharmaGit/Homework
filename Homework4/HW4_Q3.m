clc, clearvars


list = [10,5,2,5];

sum = 0;

for i=1:length(list)
    sum = sum + list(i)^2;
end

rms = sqrt(sum/length(list));

disp(rms);