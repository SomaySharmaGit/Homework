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

%% Example 1 
%Plotting a single function
x = 0:0.01:2*pi;
plot(x,sin(x));

%% Example 2
%Plotting multiple functions
plot(x,sin(x), x, cos(x));

%% Example 3
%Adding a legend, title, and labels into a plot
plot(x,sin(x), x, cos(x));
legend('sin(x)', 'cos(x)');
title('Sine and Cosine');
xlabel('x-value');
ylabel('y-value');


%Notice how even though there are 3 blocks of code plotting, only one
%window pops up. This is because each new plot overrides the previous one.
%Comment out the plots that aren't relevant to see the one you want to see.

%% Example 4
%Graphing with two variables, notice the parentheses for the title {-x},
%and how I am able to add a label onto the curve, it makes a cursor that
%allows you to stick the label on the graph when you open the plot
x = 0:0.01:10;
y = exp(-x);
plot(x,y);
title('Exponential function e^{-x}');
xlabel('x');
ylabel('f(x) = e^{-x}');
gtext('y=e^{-x}');


%% Example 5 
%Using linspace() instead of x = 0:10. The third parameter tells you how
%many points you want between the interval
x = linspace(1,10,500);
y = sin(x);
plot(x,y);

%% Example 6
%Using linspace for a parametric equation to draw a unit circle
t = linspace(0, 2*pi, 500);
x = cos(t);
y = sin(t);
plot(x,y);
title('Unit circle');
xlabel('x = cos(t)');
ylabel('y = sin(t)');


