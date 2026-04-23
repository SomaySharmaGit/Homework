clc, clearvars

x = 0:0.05:10;
y1 = sin(x);
y2 = sin(2 * x);
y3 = cos(x);
y4 = cos(2 * x);
Y = [y1;y2;y3;y4];

legendList = ["sin(x)", "sin(2x)", "cos(x)", "cos(2x)"];
titleList = ["Plot of sin(x)", "Plot of sin(2x)", "Plot of cos(x)", "Plot of cos(2x)"];

for i=1:4
    subplot(2,2,i);
    plot(x,Y(i,1:201));
    legend(legendList(i));
    title(titleList(i));
    xlabel("x");
    ylabel("y");
end