clc, clearvars

disp(week_day(1));
disp(week_day(2));
disp(week_day(3));
disp(week_day(4));
disp(week_day(5));
disp(week_day(6));
disp(week_day(7));
disp(week_day(8));


function result = week_day(day_num)
    
    switch day_num
        case 1
            result = "Monday";
        case 2
            result = "Tuesday";
        case 3
            result = "Wednesday";
        case 4
            result = "Thursday";
        case 5
            result = "Friday";
        case 6
            result = "Saturday";
        case 7
            result = "Sunday";
        otherwise 
            result = "Not a valid number";
        end

end