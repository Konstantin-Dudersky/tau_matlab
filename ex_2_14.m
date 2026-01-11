W1 = tf(2, [1, 2]);
W2 = tf(3, [1, 3]);

W_s1 = W1 * W2
W_s2 = series(W1, W2)

W_p1 = W1 + W2
W_p2 = parallel(W1, W2)