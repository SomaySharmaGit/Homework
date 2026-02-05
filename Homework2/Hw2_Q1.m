clc, clearvars

x1 = 0; y1 = 0; x2 = pi; y2 = exp(1);
distance(x1,y1,x2,y2);


function distance(x1,y1,x2,y2)
result = sqrt((x2-x1)^2 + (y2-y1)^2);
formatspec = 'The distance between (%f, %f) and (%f, %f) is %f\n';
fprintf(formatspec,x1,y1,x2,y2,result);
end
