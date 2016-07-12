function h = draw_ellipse(pos, cov, color)

%% pos is the vector of mean
%% cov is the covariance matrix
%% color is the color like 'blue','red' etc


persistent CIRCLE 
persistent chi2

if isempty(CIRCLE) 
    theta = linspace(0, 2*pi,80);
    CIRCLE = [cos(theta); sin(theta)];
end

if isempty(chi2)
    alpha = 0.90;
    chi2 = chi2inv(alpha,2);
end

[V,D]=eig(full(cov(1:2,1:2)));
ejes=sqrt(chi2*diag(D));
P = (V*diag(ejes))*CIRCLE;
hp = line(P(1,:)+pos(1), P(2,:)+pos(2));
axis equal;
set(hp,'Color', color);