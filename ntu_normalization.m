function [xyzn] = ntu_normalization(xyz)
% from https://wenku.baidu.com/view/58b1f64cf7ec4afe04a1df73.html
anchor = xyz(:,1); %spine
xyz = xyz - anchor;
% compute the directions.
xax = xyz(:,5) - xyz(:,9);
xax = xa / norm(xax, 2);
yax = xyz(:,1) = 


xyz2 = xyz; 
xyz(2,:) = xyz2(3,:);
xyz(3,:) = xyz2(2,:);

shoulder_len = norm(xyz(:,5) - xyz(:,9), 2);
center = xyz(:,1);
%x = xyz(:,13) - xyz(:,17);
x = xyz(:,5) - xyz(:,9);
x = x / norm(x,2);
z = [0,0,1]';
yp = cross(x, z);

t = atan2(yp(1), yp(2))+pi;
R = [cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];
W = xyz - repmat(center, 1, 20);
W = R * W;
xyz = W;
%figure(1);
%plot3(W(1,:), W(2,:), W(3,:), '.', 'markersize', 40, 'color', [1,0,1]);
%axis equal;
%hold on;
%plot3(xyz(1,5), xyz(2,5), xyz(3,5), '.', 'markersize', 40, 'color', [1,0,0]);
%plot3(xyz(1,9), xyz(2,9), xyz(3,9), '.', 'markersize', 40, 'color', [0,1,0]);
%hold off;
xyzn = xyz / (5*shoulder_len);

%plot3(xyzn(1,:), xyzn(2,:), xyzn(3,:), 'b.', 'markersize', 40);
%hold on;
%plot3(xyzn(1,[5]), xyzn(2,[5]), xyzn(3,[5]), 'g.', 'markersize', 60);
%plot3(xyzn(1,[9]), xyzn(2,[9]), xyzn(3,[9]), 'r.', 'markersize', 60);
%axis equal
%hold off;
%drawnow;
end