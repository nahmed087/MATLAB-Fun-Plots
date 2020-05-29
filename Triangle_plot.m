%%
% *This is an example of how to create a triangular plot in MATLAB&#174;* .
% 
% You can open this example in the <https://www.mathworks.com/products/matlab/live-editor.html 
% Live Editor> with MATLAB version 2016a or higher.
%
% Read about the <http://www.mathworks.com/help/matlab/ref/triplot.html |triplot|> function in the MATLAB documentation.
% For more examples, go to <http://www.mathworks.com/discovery/gallery.html MATLAB Plot Gallery>
%
% Copyright 2012-2018 The MathWorks, Inc.
% Create a set of points representing a point cloud
numpts = 192;
t = linspace(-pi, pi, numpts+1)';
r = 0.1 + 5*sqrt(cos(6*t).^2 + (0.7).^2);
x = r.*cos(t);
y = r.*sin(t);

r1 = 0.2 + 5*sqrt(cos(6*t).^2 + (0.7).^2);
x1 = r1.*cos(t);
y1 = r1.*sin(t);

r2 = 0.3 + 5*sqrt(cos(6*t).^2 + (0.7).^2);
x2 = r2.*cos(t);
y2 = r2.*sin(t);

% Construct a Delaunay Triangulation of the point set
dt  = DelaunayTri(x,y);
tri = dt(:,:);
% Create a triangle plot of the Delauney Triangulation
figure
triplot(tri,x,y,'r','linewidth',2), hold on
triplot(tri,x1,y1,'b','linewidth',2), hold on
triplot(tri,x2,y2,'g','linewidth',2), hold on
axis equal
% Add title and axis labels
title('Curve reconstruction from a point cloud')
xlabel('x')
ylabel('y')