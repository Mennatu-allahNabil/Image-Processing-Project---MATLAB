function [img] = ideal_lowpass(image, d0)
    img = zeros(size(image));
    [h w L]=size(image);
    for channel = 1:L
        fi = fft2(image(:,:,channel)); % 2D fast Fourier transform on matrix 
        f_shift = fftshift(fi); % Shift zero frequency of discrete Fourier transform to the center 
        [w, h] = size(image(:,:,channel));
        f = zeros(w, h);

        for k = 1:w
            for l = 1:h
                d = sqrt((k - (w/2))^2 + (l - (h/2))^2); %distance  
                if (d <= d0)
                    f(k, l) = 1;
                else
                    f(k, l) = 0;
                end         
            end
        end

        filter_apply = f_shift .* f;
        image_original = ifftshift(filter_apply);
        img(:,:,channel) = abs(ifft2(image_original));
        img(:,:,channel) = log(img(:,:,channel) + 1); % Adding 1 to avoid taking the log of 0
        img(:,:,channel) = mat2gray(img(:,:,channel)); % Normalize pixel values to the range [0,1]
    end
end