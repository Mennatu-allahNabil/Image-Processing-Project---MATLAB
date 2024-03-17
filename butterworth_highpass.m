function [img] = butterworth_highpass(image, d0,n)
    img = zeros(size(image));
    [h w L]=size(image);
    for channel = 1:L
        fi = fft2(image(:,:,channel)); % 2D fast Fourier transform on matrix 
        f_shift = fftshift(fi); % Shift zero frequency of discrete Fourier transform to the center 
        [h,w] = size(image(:,:,channel));
        f = zeros(h,w);

        for k = 1:w
            for l = 1:h
                d = sqrt((k - (w/2))^2 + (l - (h/2))^2); %distance 
                f(k,l)=1/(1+(d0/d)^(2*n));     
            end
        end

        filter_apply = f_shift .* f;
        image_original = ifftshift(filter_apply);
        img(:,:,channel) = abs(ifft2(image_original));
        img(:,:,channel) = log(img(:,:,channel) + 1); % Adding 1 to avoid taking the log of 0
        img(:,:,channel) = mat2gray(img(:,:,channel)); % Normalize pixel values to the range [0,1]
    end
end