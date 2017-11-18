data = [
 0.0 0.0 0.0 -3.09560851009 2.67203773024 1.79001738326 -0.0102865293347 5.4496882336 0.203162302283 -3.09560851009 2.67203773024 1.79001738326 -0.0681547733928 0.532844499454 -0.244402700354 -3.08530029729 2.78422672944 1.73007854889 -0.0259518263978 5.26435916582 0.482436129106 -0.383573140101 0.442904846549 -0.255462594714 -0.0259518263978 5.26435916582 0.482436129106 -3.08530029729 2.78422672944 1.73007854889 -0.0681547733928 0.532844499454 -0.244402700354 -3.09560851009 2.67203773024 1.79001738326 -3.03510687616 2.60008100506 1.80104078692 0.0254165472769 4.67102456917 -0.0822611819553 -0.565508110807 0.267772382033 -0.0594083612455 -3.00729554769 2.56507028108 1.86051227441 -0.565508110807 0.267772382033 -0.0594083612455 0.0254165472769 4.67102456917 -0.0822611819553 -3.03510687616 2.60008100506 1.80104078692 -3.09560851009 2.67203773024 1.79001738326 0.0 0.0 0.0 0.0 5.18460474308 4.4408920985e-16 0.136729729584 4.94274077565 0.310003904508 -0.282890354726 0.244498450854 0.0238768159124 -3.0762643927 2.47835720568 1.77878481554 0.128140381749 5.16168016196 0.543924328163 -3.0762643927 2.47835720568 1.77878481554 -0.282890354726 0.244498450854 0.0238768159124 0.136729729584 4.94274077565 0.310003904508 0.0 5.18460474308 4.4408920985e-16 -0.139167236497 0.411211908876 -0.0840741972921 -3.1217668819 2.47852070971 1.8850376611 0.328309813514 5.39335433113 0.400372470893 -0.147474907353 0.424287993085 -0.119358842518 0.328309813514 5.39335433113 0.400372470893 -3.1217668819 2.47852070971 1.8850376611 -0.139167236497 0.411211908876 -0.0840741972921 0.0 5.18460474308 4.4408920985e-16 0.0 0.0 0.0
  ];   
data = reshape(data, 3, numel(data)/3);
plot3(data(1,:), data(2,:), data(3,:), '.r', 'markersize', 40);
hold on;
plot3(data(1,5), data(2,5), data(3,5),'.b', 'markersize', 40);
plot3(data(1,9), data(2,9), data(3,9),'.g', 'markersize', 40);
axis equal;

figure;
data = reshape(data, 3, numel(data)/3);
plot3(data(1,:), data(3,:), data(2,:), '.r', 'markersize', 40);
hold on;
plot3(data(1,5), data(3,5), data(2,5),'.b', 'markersize', 40);
plot3(data(1,9), data(3,9), data(2,9),'.g', 'markersize', 40);
axis equal;