function [four,fs] = fourier_trans(image)
[h, w, L]=size(image);
four=zeros(h,w,L);
fs=zeros(h,w,L);

    for channel = 1:L
        fi = fft2(image(:,:,channel)); % 2D fast Fourier transform on matrix 
        f_shift = fftshift(fi); % Shift zero frequency of discrete Fourier transform to the center 
         fs(:,:,channel)=f_shift;
        x=abs(f_shift);
        x=log(x+1);
        x=mat2gray(x);
        four(:,:,channel)=x;
    end
        
end

