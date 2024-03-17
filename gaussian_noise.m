function [new_img] = gaussian_noise(img, m, v)
    [h, w, L] = size(img);
    
 for level=1:L   
    for i = 1:255
        no_of_pixels = round(((exp( - ((i - m) ^ 2/(2 * v * v))))/(sqrt(2 * 3.14 * v * v))) * w * h);
        for x = 1 : no_of_pixels
            row=ceil(rand(1, 1) * h);
            column=ceil(rand(1, 1) * w);
            img(row, column,level) = img(row, column,level) + i;
        end
    end
 end   
    img = min(max(img,0),255);
    new_img=uint8(img);
   
end