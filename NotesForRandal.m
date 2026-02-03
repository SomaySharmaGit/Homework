clc, clearvars

%Below generates a list from 1 to 10
x = 1:10;
%disp(x);

%Below generates a list from 1 to 10 in increments of 10
x = 1:2:10;
%disp(x);

%The process above is called vectorization. It creates a vector of values.
%Print out the statements above to see what vectors they create

%==========================

%Plotting in MATLAB

%%Example 1 
%Plotting a single function
x = 0:0.01:2*pi;
plot(x,sin(x));

%%Example 2
%Plotting multiple functions
plot(x,sin(x), x, cos(x));

%%Example 3
%Adding a legend, title, and labels into a plot
plot(x,sin(x), x, cos(x));
legend('sin(x)', 'cos(x)');
title('Sine and Cosine');
xlabel('x-value');
ylabel('y-value');


%Notice how even though there are 3 blocks of code plotting, only one
%window pops up. This is because each new plot overrides the previous one.
%Comment out the plots that aren't relevant to see the one you want to see.

