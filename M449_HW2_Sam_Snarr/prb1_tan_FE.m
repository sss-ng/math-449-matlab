
h=pi/256;
n=128;

y(1)=A;
v(1)=B;
u(1)=0;
z(1)=0;
w(1)=tan(0);

t(1)=0;

for i=1:n
    y(i+1) = y(i) + h*v(i);
    v(i+1) = v(i) + h*(1/m)*(w(i)-c*y(i)-f*v(i));
    u(i+1) = u(i) + h*v(i)^2;
    z(i+1) = z(i) + h*w(i)*v(i);
    w(i+1) = w(i) + h*(1+w(i)^2);
    
    t(i+1) = h*i;
end

plot(t,y,'.-')
Cons = m*v.^2 + c*y.^2  + 2*f*u - 2*z;

