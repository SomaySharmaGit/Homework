clc, clearvars

a = 1; 
b = 5;
c = 6;

root1 = positive_root(a,b,c);
root2 = negative_root(a,b,c);

formatspec = 'The two roots of the given polynomial are %f and %f';
fprintf(formatspec, root1, root2);




function result = positive_root(a,b,c)
result = ((-b) + sqrt(b^2 - (4 * a * c)))/ 2 * a;
end

function result = negative_root(a,b,c)
result = ((-b) - sqrt(b^2 - (4 * a * c)))/ 2 * a;
end