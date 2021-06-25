num = 1;
den = [1 5 4 0];
zeta = 0.6;
[numopen, denopen, denclsd] = rldesign(num,den,zeta);
subplot(221), rlocus(numopen,denopen), grid
axis('equal'), axis([-6 0 -3 3]), title('Root-locus')
subplot(222), step(numopen,denclsd), grid
timespec(numopne,denclsd);
subplot(111)