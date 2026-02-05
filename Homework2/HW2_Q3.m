clc, clearvars

value = 100 * pi;

fprintf('value = %e\n', value);
%The above statement prints out the value in scientific notation
fprintf('value = %f\n', value);
%The above statement prints out the value with 6 digits after the decimal
fprintf('value = %g\n', value);
%The above statement prints out the value with 3 digits after the decimal
fprintf('value = %12.4f', value);
%The above statement prints out the value with 8 digits before the decimal
%and 4 digits after the decimal