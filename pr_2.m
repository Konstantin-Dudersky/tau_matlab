% Пример 2.1

syms s;
Y = 1 / ((s + 1) * (s^2 + 5 * s + 6));
y = ilaplace(Y);
disp("Пример 2.1");
disp(y);
figure;
fplot(y, [0,10]);

% Пример 2.2
syms s;
Y = (s^2 + 3 * s + 3) / ((s + 1) * (s^2 + 5 * s + 6));
y = ilaplace(Y);
disp("Пример 2.2");
disp(y);
figure;
fplot(y, [0,10]);

% Задача 2.4.3
syms s;
y_0 = 3;
dy_0 = 5;
d2y_0 = -60;
Ys = (5 / (s + 3) + s^2 * y_0 + s * (dy_0 + 7 * y_0) + d2y_0 + 7 * dy_0 + 12 * y_0) / (s^3 + 7 * s^2 + 12 * s);
yt = ilaplace(Ys);
disp("Задача 2.4.3");
disp(yt);
figure;
fplot(yt, [0,10]);

% Задача 2.6.15
syms s;
Ws = (s^2 + 4 * s + 4) / (s^3 + 3 * s^2 + 3 * s + 1);
wt = ilaplace(Ws);
figure;
fplot(wt, [0, 10]);
disp("Задача 2.6.15")
disp(wt);