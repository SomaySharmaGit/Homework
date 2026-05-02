clc, clearvars


x = 0:3:24;
y1 = 1 * (2).^(x/1.0);
y2 = 1 * (2).^(x/1.5);

plot(x,y1,'bo');
hold on;
plot(x,y2, 'ro');

figure();
semilogy(x,y1, 'bo');
hold on;
semilogy(x,y2, 'ro');

%% The bacteria that doubled every 60 minutes was much smaller than the 
%% 90 minutes plot on the regular plot. On the linear-log plot, the difference 
%% is much smaller