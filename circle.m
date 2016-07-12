function c = circle(a,b)
%CIRCLE Summary of this function goes here
%   Detailed explanation goes here
t = linspace(0,2*pi);
r = 0.2;
x = r*cos(t)+a;
y = r*sin(t)+b;
plot(x,y,'red');
end

