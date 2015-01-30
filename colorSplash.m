function out = colorSplash(img, rgb)
image = double(imread(img));
%Reading image
gray = image;
gval = uint8(double((image(:, :, 1))./3 + double(image(:, :, 2))./3 + double(image(:, :, 3))./3));
%Average
gray(:, :, 1) = gval; 
gray(:, :, 2) = gval;
gray(:, :, 3) = gval;
gray = uint8(gray); %sets avg value
mask = (image(:,:,1) == rgb(1) & image(:,:,2) == rgb(2) & image(:,:,3) == rgb(3)); %creates mask
mask = cat(3 ,mask, mask, mask); %concatenates mask
gray(mask) = image(mask);
out = gray; %replacing pixels
end