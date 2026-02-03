clc, clearvars

x = 2;
y = 5;

a = (y^3 * x) / (y + x^2);
b = sqrt(x - sqrt(y));
c = (7/5) * x * y;
d = ((pi - (3/4)) /x ) * (y^(2/5));

formatspec = 'The answer to Part (A), (B), (C), & (D) is %8.3f, %8.3f, %8.3f, %8.3f, respectively \n';
fprintf(formatspec, a, b, c, d);


