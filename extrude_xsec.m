function [ xsecxtrud, xsecsurf ] = extrude_xsec( xsec, dist )
plot3(xsec(1,:),xsec(2,:),xsec(3,:)); %plot the figure whose coordinates are given in xsec
hold on; % make the figure stay
row1 = xsec(1,:) + dist; % generate the new x values for the extrusion
xsecxtrud = [row1 ; xsec(2:end , :)]; % make the new array --> xsecxtrude
plot3(xsecxtrud(1,:),xsecxtrud(2,:),xsecxtrud(3,:)); % plot the xtruded thing
hold on; % keep it there
[r,c] = size(xsec);
n = c-1;
xsecsurf = []
t = 1
for i = 1:n
    m = t+1
    if m >= c
        m = 1;
    end
    temp = [1,t,2,t,2,m,1,m,1,t];
    temp = temp';
    xsecsurf = [xsecsurf, temp];
    t = t+1;    
end
end

