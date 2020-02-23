I = imread('lenna.png');

figure ('name','Original RGB Image','Numbertitle','off')
imshow(I);

G = rgb2gray(I);

figure ('name','Created Grayscale Image','Numbertitle','off')
imshow(G);

I1 = I(:,:,1);
I2 = I(:,:,2);
I3 = I(:,:,3);

G1 = cat(3,I1,I2,I3);

figure ('name','Duplicated RGB Image','Numbertitle','off')
imshow(G1);

