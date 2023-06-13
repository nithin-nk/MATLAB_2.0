fs=5000;
% fp=1500;
% fstop=2000;
w=1750/fs;
n=-20:20;
% plot(fs,fp);
% h=(w/pi)*sin(w*n)/(w*n)
h=(w/pi)*sinc(w*n);
%sigshift(n,h,10)
subplot(3,1,1)
stem(n+20,h);
title('Sinc Functiomnn');
w = 0.54-(0.46*cos(2*pi*n/40))
% subplot(2,1,1)
subplot(3,1,2)
stem(n,w)
title('Window Functiomnn');
subplot(3,1,3)
x=h.*w;
stem(n,x);
title('Resultant Functiomnn');
figure
stem(fft(w.*h))
