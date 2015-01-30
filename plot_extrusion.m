function plot_extrusion(xsec1,xsec2,xsecsurf,displayinfo)

plot3(xsec1(1,:),xsec1(2,:),xsec1(3,:),displayinfo); %plot the figure whose coordinates are given in xsec
hold on; % make the figure stay
plot3(xsec2(1,:),xsec2(2,:),xsec2(3,:),displayinfo); %plot the figure whose coordinates are given in xsec
hold on; % make the figure stay
randomShit = xsecsurf; % unused input
[~,c] = size(xsec1);
n=c;
t = 1;
for i = 1:n
    x = [xsec1(1,t),xsec2(1,t)];
    y = [xsec1(2,t),xsec2(2,t)];
    z = [xsec1(3,t),xsec2(3,t)];
    plot3(x,y,z,displayinfo);
    hold on;
    t = t + 1;
end    
end

