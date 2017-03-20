% 1)
fid=fopen('betho.wav','r');
[x,count]=fscanf(fid,'%c');
fclose(fid);
x=x(40:end)/128-1; 

fs=11025;

%%
[xn fs]=audioread('betho.wav');
nf=1024; %number of point in DTFT
Y = fft(xn,nf);
f = fs/2*linspace(0,1,nf/2+1);
plot(f,abs(Y(1:nf/2+1)));

%%
close all
sound = audioread('betho.wav');
snippet = sound(1:round(length(sound)*(5/57)));
figure(1)
plot(snippet)
title('Original Signal Spectrum')
figure(2)
plot(abs(fft(snippet)));
xlimits = get(gca,'xlim');
set(gca,'xlim',[xlimits(1) xlimits(2)/2])
title('FFT of audio snippet')

% f = 784/(2*pi)

[num,den] = iirnotch(3,1)


%fo = 1100-1400
%f0-30, fo+30
%r=  9.265~

%%
a = [1 -2*r*cos(w_0) r^2]; %y coeff
b = [1 -2*cos(w_0) 1]; %x coeff
%H(z) = y(z)/x(z) = 1-2cos(w_0)z^-1+z^-2 / 1-2rcos(w_0)z^-1+r^2z^-2
r=0.97;
Hz = freqz(b,a,1000)
f_0 = 1300;ki\\
w_0 = 2*pi*f_0; %center freq

