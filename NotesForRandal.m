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
% Plotting a single function
x = 0:0.01:2*pi;
plot(x,sin(x));

%% Example 2
% Plotting multiple functions
plot(x,sin(x), x, cos(x));

%% Example 3
% Adding a legend, title, and labels into a plot
plot(x,sin(x), x, cos(x));
legend('sin(x)', 'cos(x)');
title('Sine and Cosine');
xlabel('x-value');
ylabel('y-value');


% Notice how even though there are 3 blocks of code plotting, only one
%window pops up. This is because each new plot overrides the previous one.
%Comment out the plots that aren't relevant to see the one you want to see.

%% Example 4
% Graphing with two variables, notice the parentheses for the title {-x},
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
% Using linspace() instead of x = 0:10. The third parameter tells you how
%many points you want between the interval
x = linspace(1,10,500);
y = sin(x);
plot(x,y);

%% Example 6
% Using linspace for a parametric equation to draw a unit circle
t = linspace(0, 2*pi, 500);
x = cos(t);
y = sin(t);
plot(x,y);
title('Unit circle');
xlabel('x = cos(t)');
ylabel('y = sin(t)');

%% Example 7
% Damped oscillation. Notice the '.' before the '*'. Whenever you work with
%vectors like this, you need the '.' operator for element wise operations.
%Search up for more detail.
x = 0:0.01:10;
y = exp(-0.3 * x) .* sin(5 * x);
plot(x,y);
title('Damped Oscillation');
xlabel('x');
ylabel('y');

%% Example 8
% Multiple curves from a matrix. There are 3 rows with 300 columns each.
% Row 1 is sin(x), Row 2 is cos(x), and so on. We can also transpose this
% matrix. The rows can swap with the columns, almost like rotating 90
% degrees. Look at your workspace vars for the difference
x = linspace(0,2*pi, 300);
Y = [sin(x); cos(x); sin(2*x)];
transposedY = Y';
plot(x,transposedY);
title('Multiple Curves from a Matrix');
legend('sin(x)', 'cos(x)', 'sin(2x)');

%% Example 9 
% Making piecewise functions from these functions
% The (x>=0) and (x<0) are "masks". They go through the list and if the
% condition (x>=0) or (x<0) is matched, they include it.
x = -5:0.1:5;
y = x.^2.*(x>=0) + abs(x).*(x<0);
plot(x,y);
title('Piecewise Functions');
xlabel('x');
ylabel('y');

%% Example 10
% cumsum is a cumulative sum that adds everything before it. Use help
% cumsum for more information
x = 1:200;
y = cumsum(randn(1,200));
plot(x,y);

%% Example 11
% Using a logarithmic scale by plotting in loglog()
x = 0.1:0.1:10;
y = x.^3;
loglog(x,y);
title('Log-Log Plot');

%% Example 12
% "Matrix multiplication". x is 1 row and 300 columns, x is duplicated into
% 4 rows so that each row of k can multiply an entire row of x. Look in the
% workspace for more information
x = linspace(0,2*pi,300);
k = [1 2 3 4]'; %Transposed with the " ' " symbol
y = sin(k * x);
plot(x,y);
legend('sin(x)','sin(2x)','sin(3x)','sin(4x)');