clc, clearvars

x = linspace(0,10,100);
y1 = exp((-(x.^2))) .* sin(2 * x);
y2 = exp((-(x.^2))) .* cos(2 * x);

plot(x,y1,'LineWidth', 2, 'Color', "b");
hold on;
plot(x,y2, 'LineWidth', 3, 'Color', 'r', 'LineStyle', '--');

legend("e^{-{x^2}}  sin(2x)", "e^{-{x^2}}  cos(2x)");
title("Plot of e^{-{x^2}} sin(2x) and e^{-{x^2}}  cos(2x)");
xlabel("x values");
ylabel("y values");
grid on;