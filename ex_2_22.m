sys = tf(2, [1, 2]);
w = 0:0.1:36;
pq = shiftdim(freqresp(sys, w));
subplot(3, 2, 1);
plot(real(pq), imag(pq))
grid on;
xlabel("Im");
ylabel("Re");

num = 2;
den = [1, 2];
w = 0:0.1:36;
[re, im, w] = nyquist(num, den, w);
subplot(3, 2, 2);
plot(re, im);
grid on;
xlabel("Im");
ylabel("Re");

sys = tf(2, [1, 2]);
w = 0:0.1:36;
pq = shiftdim(freqresp(sys, w));
subplot(3, 2, 3);
plot(w, abs(pq))
grid on;
xlabel("\omega, рад/с");
ylabel("A");

num = 2;
den = [1, 2];
w = 0:0.1:36;
[re, im, w] = nyquist(num, den, w);
subplot(3, 2, 4);
plot(w, (re.^2 + im.^2).^0.5);
grid on;
xlabel("\omega, рад/с");
ylabel("Re");

sys = tf(2, [1, 2]);
w = 0:0.1:36;
pq = shiftdim(freqresp(sys, w));
subplot(3, 2, 5);
plot(w, unwrap(angle(pq)) * 180 / pi)
grid on;
xlabel("\omega, рад/с");
ylabel("A");

w = 0:0.1:36;
W0 = 2 ./ (1i * w + 2);
subplot(3, 2, 6);
polarplot(angle(W0), abs(W0));
grid on;

