% Переходная функция
syms s;
H = 1 / (s^3 + 3 * s^2 + 2 * s);
h = ilaplace(H);
disp(h);
figure;
fplot(h, [0, 10]);

% Импульсная функция
syms s;
W = 1 / (s^2 + 3 * s + 2);
w = ilaplace(W);
disp(w);
figure;
fplot(w, [0, 10]);