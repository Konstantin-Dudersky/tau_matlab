syms s;
Y = 1 / ((s + 1) * (s^2 + 3 * s + 2));
% Y = tf(1, [1, 4, 5, 2]);
y = ilaplace(Y);
fplot(y, [0, 10])