num = 12;
den = [1, 5, 6];
[A, B, C, D] = tf2ss(num, den);
figure;
step(A, B, C, D);
figure;
impulse(A, B, C, D);
