close all
clear all
%% Please use MATLAB R2023b or a later version.
I=imread('Tiger.png');
figure,imshow(I)
[rows,cols,dim]=size(I);
r=7;  
iteration=2;
k=1;
%% FW-BOX
FW_BOX=FW_BoxFilter(I,r, iteration);
figure,imshow(FW_BOX)

SSIM(k) = ssim(FW_BOX, I);
PSNR(k)= psnr(im2single(FW_BOX),im2single(I));

%% SW-BOX
SW_BOX=SW_BoxFilter(I, r, iteration);
figure,imshow(SW_BOX)

SSIM(k+1) = ssim(SW_BOX, I);
PSNR(k+1)= psnr(im2single(SW_BOX),im2single(I));

%% SSW-BOX
Interval=45;
SSW=Steerable_Side_Window(Interval,r);  
SSW_BOX=SSW_BoxFilter(I,SSW, iteration);
figure,imshow(SSW_BOX)

SSIM(k+2) = ssim(SSW_BOX, I);
PSNR(k+2)= psnr(im2single(SSW_BOX),im2single(I));

%% Comparison of Metrics
fprintf('SSIM\n')
fprintf('FW_BOX= %.4f, SW_BOX = %.4f, , SSW_BOX = %.4f\n', SSIM(1), SSIM(2),SSIM(3));

fprintf('PSNR\n')
fprintf('FW_BOX= %.4f, SW_BOX = %.4f, , SSW_BOX = %.4f\n', PSNR(1), PSNR(2),PSNR(3));
