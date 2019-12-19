function [a0,an,bn] = fourierfunction(f,T,N)
syms t;
T=2*pi;
w0=2*pi/T;

a0_sym=1/T*int(f,t,-pi,pi);
a0=double(a0_sym);

for n=1:N
    an_sym(n)=2/T*int(f*cos(n*w0*t),t,-pi,pi);
    bn_sym(n)=2/T*int(f*sin(n*w0*t),t,-pi,pi); 
    an(n)=double(an_sym(n));
    bn(n)=double(bn_sym(n));
end
end

