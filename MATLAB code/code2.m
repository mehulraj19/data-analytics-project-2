% images and grayscaling
I1 = rgb2gray(imread('mehul.jpeg'));
I2 = rgb2gray(imread('beard-face.jpg'));
I3 = rgb2gray(imread('transparent-face-mask.jpg'));

% filter
k = fspecial('laplacian');

% filtering
Ie1 = imfilter(double(I1), k, 'symmetric');
Ie2 = imfilter(double(I2), k, 'symmetric');
Ie3 = imfilter(double(I3), k, 'symmetric');

% displaying
subplot(2,3,1), imshow(I1);
subplot(2,3,2), imshow(I2);
subplot(2,3,3), imshow(I3);
subplot(2,3,4), imagesc(Ie1);
colormap('gray');
subplot(2,3,5), imagesc(Ie2);
colormap('gray');
subplot(2,3,6), imagesc(Ie3);
colormap('gray');