num = 12;
den = [1, 5, 6];
Y = tf(num, den);
t = 0 : 0.02 : 3.5;

[y] = step(Y, t);
figure;
plot(t, y);
xlabel("t, [c]");
ylabel("h(t)");
grid on;

[y] = impulse(Y, t);
figure;
plot(t, y);
xlabel("t, [c]");
ylabel("w(t)");
grid on;