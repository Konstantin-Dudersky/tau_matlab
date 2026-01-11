%% Пример 4.1

sys = tf(2, [1, 2]);
w = 0:0.1:36;
[resp,freq] = freqresp(sys,w);

figure;
subplot(1, 2, 1);
plot(freq, abs(squeeze(resp)));

subplot(1, 2, 2);
plot(freq, angle(squeeze(resp)))

%% Задача 4.3.1

sys = tf([1, 1], [4, 1]);
w = 0:0.1:36;
[resp,freq] = freqresp(sys,w);

figure;
subplot(1, 2, 1);
plot(freq, abs(squeeze(resp)));

subplot(1, 2, 2);
plot(freq, angle(squeeze(resp)))

%% Задача 4.3.2

sys = tf(5, [1, 3, 2]);
w = logspace(-1, 2, 200);
figure;
bode(sys,w);
grid on;