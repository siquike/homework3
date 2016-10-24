function [u,v] = LucasKanadeInverseCompositional(It, It1, rect)
% input - image at time t, image at t+1, rectangle (top left, bot right coordinates)
% output - movement vector, [u,v] in the x- and y-directions.
u = 0;
y = 0;
W = diag([1 1 1]);

[X,Y]=meshgrid(It1);
[X,Y]=meshgrid(It1);

for i = 1:
%% Evaluate gradient
[Dx,Dy] = gradient(It);

%%Evaluate Jacobian
J = ones(3);

%% Compute Steepest Descent
SDx = Dx*J;
SDy = Dy*J; 

%% Compute Inverse Hessian Matrix
[Dxx,Dxy] = gradient(Dx);
[Dyx,Dyy] = gradient(Dy);

H = [Dxx Dxy;
     Dyx Dyy];

Hinv = inv(H);




