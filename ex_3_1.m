%% 1
disp("1:")
den = [1, 3, 2];
p12 = roots(den);
disp(p12);

syms y(t);
eqn = diff(y, t, 2) + 3 * diff(y, t) + 2 * y == 1;
Dy = diff(y,t);
cond = [y(0) == 0, Dy(0)==0];
S = dsolve(eqn, cond);
disp(S)

figure;
fplot(S, [0, 15]);
grid on;

%% 2
disp("2:")
den = [1, 1, 2];
p12 = roots(den);
disp(p12);

syms y(t);
eqn = diff(y, t, 2) + 1 * diff(y, t) + 2 * y == 1;
Dy = diff(y,t);
cond = [y(0) == 0, Dy(0)==0];
S = dsolve(eqn, cond);
disp(S)

figure;
fplot(S, [0, 15]);
grid on;

%% 3
disp("3:")
den = [1, 1, -2];
p12 = roots(den);
disp(p12);

syms y(t);
eqn = 1 * diff(y, t, 2) + 1 * diff(y, t) - 2 * y == 1;
Dy = diff(y,t);
cond = [y(0) == 0, Dy(0)==0];
S = dsolve(eqn, cond);
disp(S)

figure;
fplot(S, [0, 15]);
grid on;

%% 4
disp("4:")
den = [1, -2, 10];
p12 = roots(den);
disp(p12);

syms y(t);
eqn = 1 * diff(y, t, 2) - 2 * diff(y, t) + 10 * y == 1;
Dy = diff(y,t);
cond = [y(0) == 0, Dy(0)==0];
S = dsolve(eqn, cond);
disp(S)

figure;
fplot(S, [0, 15]);
grid on;