function R = shrink_skeletons(S)
% For skeletons with 20 joints, convert it to 15 joints.
R = zeros(3,15);
R(:,    [1 2 4  5 7 8 10 11 13 14]) =...
S(:,    [4 3 9 10 5 6 17 18 13 14]);
R(:, 3) = (S(:, 1) + S(:, 2))/2;
R(:, 6) = (S(:,11) + S(:,12))/2;
R(:, 9) = (S(:, 7) + S(:, 8))/2;
R(:,12) = (S(:,19) + S(:,20))/2;
R(:,15) = (S(:,15) + S(:,16))/2;
end