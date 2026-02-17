clc, clearvars 

disp(delivery_cost(101));
disp(delivery_cost(80));
disp(delivery_cost(60));
disp(delivery_cost(1));



function result = delivery_cost(pounds)

if pounds > 100
    disp("too heavy");
    result = [];
elseif pounds > 70 
    result = 30 + ((pounds - 2) * 5) + 15; 
elseif pounds > 2
    result = 30 + ((pounds - 2) * 5);
else
    result = 15 * pounds;
end

end
