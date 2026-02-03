clc, clearvars

a = 1; b = 1; c = -6;
print(a,b,c);

a = 2; b = -5; c = -3;
print(a,b,c);

function result = positive_root(a,b,c)
result = ((-b) + sqrt(b^2 - (4 * a * c)))/ 2 * a;
end

function result = negative_root(a,b,c)
result = ((-b) - sqrt(b^2 - (4 * a * c)))/ 2 * a;
end

function print(a, b, c)
    root1 = positive_root(a,b,c);
    root2 = negative_root(a,b,c);
    formatspec = 'The two roots of the given quadratic with coefficientss %d, %d, and %d are %f and %f\n';
    fprintf(formatspec,a, b, c, root1, root2);
end