% read the original image
I = imread('test2.png');


% colors = ["RED","ORANGE","YELLOW","GREEN","BLUE","VIOLET"];

% set color to filter
color = "ORANGE";

% call createMask function to get the mask and the filtered image
[BW,maskedRGBImage] = createMask(I,color);

% plot the original image, mask and filtered image all in one figure
subplot(1,3,1);imshow(I);title('Original Image');
subplot(1,3,2);imshow(BW);title('Mask');
subplot(1,3,3);imshow(maskedRGBImage);title('Filtered Image');