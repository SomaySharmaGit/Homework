clc, clearvars

x = 1 + 3i; 
y = 6 - 7i;

a = x + y;
b = x -y;
c = x * y;
d = x / y;

fprintf('For Part (A) the result is %f + %fi \n', real(a), imag(a));
fprintf('For Part (B) the result is %f + %fi \n', real(b), imag(b));
fprintf('For Part (C) the result is %f + %fi \n', real(c), imag(c));
fprintf('For Part (D) the result is %f + %fi \n', real(d), imag(d));
