% images and grayscaling
I1 = rgb2gray(imread('mehul.jpeg'));
I2 = rgb2gray(imread('beard-face.jpg'));
I3 = rgb2gray(imread('transparent-face-mask.jpg'));

% image filtering
is1 = edge(I1, 'sobel');
ie1 = edge(I1, 'canny');
is2 = edge(I2, 'sobel');
ie2 = edge(I2, 'canny');
is3 = edge(I3, 'sobel');
ie3 = edge(I3, 'canny');

% image subplot
subplot(331), imshow(I1);
subplot(332), imshow(is1);
subplot(333), imshow(ie1);

subplot(334), imshow(I2);
subplot(335), imshow(is2);
subplot(336), imshow(ie2);

subplot(337), imshow(I3);
subplot(338), imshow(is3);
subplot(339), imshow(ie3);