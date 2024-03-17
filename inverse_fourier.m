function [inverse_fourier_image] = inverse_fourier(frequency_domain_image)
    [h, w, L] = size(frequency_domain_image);
    inverse_fourier_image = zeros(h, w, L);

    for channel = 1:L
       n=fftshift(frequency_domain_image(:,:,channel));
        inverse_fourier_channel = ifft2(n);

       
        inverse_fourier_channel = abs(inverse_fourier_channel);
        inverse_fourier_channel =log( inverse_fourier_channel);
        
        % Normalize pixel values to the range [0,1]
        inverse_fourier_channel = mat2gray(inverse_fourier_channel);

        % Store the result
        inverse_fourier_image(:,:,channel) = inverse_fourier_channel;
    end
end
