img = imread('test2.png');

figure ('name','Transmitted Image','Numbertitle','off');
imshow(img);

gray = rgb2gray(img);

imgVector = reshape(gray, 1, []);

img1 = vec2mat(imgVector,180,180);

img2 = imresize(img, [90 90])

gray1 = rgb2gray(img2);

imgVector1 = reshape(gray1, 1, []);

%figure(1);
%imshow(img1);

img1r = img(:,:,1);
img1g = img(:,:,2);
img1b = img(:,:,3);

imgVector1r = imresize(reshape(img1r,1,[]),[1,8100]);
imgVector1g = imresize(reshape(img1g,1,[]),[1,8100]);
imgVector1b = imresize(reshape(img1b,1,[]),[1,8100]);

%figure(2);
%imshow(img1r);

%figure(3);
%imshow(img1g);

%figure(4);
%imshow(img1b);

rgb_img1 = cat(3, img1r, img1g, img1b);

%figure(5);
%imshow(rgb_img1);

figure ('name','Plot of Image Pixel values','Numbertitle','off')
stem(imgVector);


simout1r = reshape(simoutr,90,90);
simout11r = imresize(simout1r, [180,180]);

simout1g = reshape(simoutg,90,90);
simout11g = imresize(simout1g, [180,180]);

simout1b = reshape(simoutb,90,90);
simout11b = imresize(simout1b, [180,180]);


simout_rgb = cat(3,simout11r,simout11g,simout11b);
figure ('name','Received Image','Numbertitle','off');
imshow(simout_rgb);
imshow('test2.png');
imsave;