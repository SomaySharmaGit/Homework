clc, clearvars

x1 = linspace(0,pi,100);
y1 = sin(2 * x1);
x2 = linspace(0,pi,100);
y2 = exp(-(x2.^2));

plot(x1,y1,x2,y2);
legend("sin(2x)", "e^{-(x^2)}");
title("Plot of sin(2x) and e^{-x^2}");

figure;

x1 = linspace(0,pi,100);
y1 = cos(2 * x1);
x2 = linspace(0,pi,100);
y2 = exp(-(x2.^2));

plot(x1,y1,x2,y2);
legend("cos(2x)", "e^{-(x^2)}");
title("Plot of cos(2x) and e^{-x^2}");