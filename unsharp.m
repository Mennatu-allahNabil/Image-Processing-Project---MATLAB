function [filtered] = unsharp(image)

[h, w, L] = size(image);
filtered = double(zeros(h+2, w+2 ,L));
pad_im = padding_copy(image,3);
smoothed=avg(image);

kernel=image-smoothed;
filtered=image+kernel;
filtered = uint8(filtered);

end
