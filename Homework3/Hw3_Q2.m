clc, clearvars

disp(log_function(1));
disp(log_function(0.5));
disp(log_function(0));




function result = log_function(value)
    if value >=1
        result = [];
        disp("Not in the domain of this function");
    else 
        result = log(1/(1-value));
    end
end