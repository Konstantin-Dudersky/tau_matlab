num = 2 * [1, 4];
den = conv(conv(conv([1, 2, 1], [1, 2, 1]), [1, 2, 3, 4]), [1, 5]);
W = tf(num, den)