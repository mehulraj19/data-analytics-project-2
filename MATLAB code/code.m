% images
I1 = imread('mehul.jpeg');
I2 = imread('beard-face.jpg');
I3 = imread('transparent-face-mask.jpg');

% filter
g = fspecial('gaussian',[5 5],1.5);

% Image Plots
subplot(2,3,1), imshow(I1);
subplot(2,3,2), imshow(I2);
subplot(2,3,3), imshow(I3);

% image filtering and displaying
Is1 = imfilter(I1, g);
Ie1 = (I1-Is1);
subplot(2,3,4), imshow(Ie1);
Is2 = imfilter(I2, g);
Ie2 = (I2-Is2);
subplot(2,3,5), imshow(Ie2);
Is3 = imfilter(I3, g);
Ie3 = (I3-Is3);
subplot(2,3,6), imshow(Ie3);