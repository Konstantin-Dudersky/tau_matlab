syms y(t);
eqn = diff(y, t, 2) + 8 * diff(y, t) + 12 * y == 48;
Dy = diff(y,t);
cond = [y(0) == 0, Dy(0)==0];

S = dsolve(eqn, cond);

disp(S)

fplot(S, [0, 5])

% syms y(t) a b
% eqn = diff(y,t,2) == a^2*y;
% Dy = diff(y,t);
% cond = [y(0)==b, Dy(0)==1];
% ySol(t) = dsolve(eqn,cond)
