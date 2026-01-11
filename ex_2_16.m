W1 = tf([3, 0], 1);
W2 = tf(2, [1, 1]);
W3 = tf(1, [2, 0]);
Ws1 = feedback(W2, W3, -1);
Ws2 = feedback(series(Ws1, W1), 1, -1);
W = series(Ws2, W3);
W = minreal(W)