clc, clearvars

disp(natural_log(1));
disp(natural_log(0.5));
disp(natural_log(0));




function result = natural_log(value)
    if value <= 0
        result = [];
        disp("Not in the domain of ln");
    else 
        result = log(value);
    end
end