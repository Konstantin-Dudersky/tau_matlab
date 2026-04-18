A = [0, -1; 2, -3];
dt = 0.2;
P = expm(A * dt);
disp("P");
disp(P);

A = [0, -1; 2, -3];
B = [1; 0];
C = [0, 1.5];
D = 0;
W = ss(A, B, C, D);
x0 = [1, 1];
t = 0 : 0.01: 1;
u = 0 * t;
[y, T, x] = lsim(W, u, t, x0);
plot(T, y);
xlabel('t, c');
ylabel('y');
grid on;
