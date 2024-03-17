function [stretched_image] = myContrastStretching(image)
[h, w, l] = size(image);
stretched_image = zeros(h, w, l);

for k = 1:l
    min_val = min(min(image(:,:,k)));
    max_val = max(max(image(:,:,k))); 
    % calc min & max value for each channel
    for i = 1:h
        for j = 1:w
            pixel_value = image(i, j, k);

            % Apply contrast stretching formula
            stretched_pixel = (pixel_value - min_val) / (max_val - min_val) * 255; % as 255 is new max will be 255-new min(0)+new min(0)

            % Ensure values stay within the 0-255 range
            stretched_pixel = min(max(stretched_pixel, 0), 255);

            stretched_image(i, j, k) = stretched_pixel;
        end
    end
    
end

% Convert to uint8 data type
stretched_image = uint8(stretched_image);
%imshow(stretched_image)
end

