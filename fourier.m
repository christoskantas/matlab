syms t;
T=2*pi;
w0=2*pi/T;
f=-2*(t^2);
N=20;
[a0,an,bn]=fourierfunction(f,T,N);
tnum=-pi:0.01:pi;
fnum=a0;
for n=1:N
    harmonic=an(n)*cos(n*w0*tnum)+bn(n)*sin(n*w0*tnum);
    fnum=fnum+harmonic;
    fnum0=-2*(tnum.^2);
    pause(0.1)
    plot(tnum,fnum,tnum,fnum0)
end

