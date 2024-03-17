function [new_im] = padding_zero(image,mask_w)

[h w L]=size(image);

pad=mask_w-1;
new_h=h+pad*2;
new_w=w+pad*2;
new_im=zeros(new_h, new_w ,L);
for k=1:L
for i=1 : h
    for j=1 : w
        new_im(i+pad,j+pad,k)=image(i,j,k);
    end
end
end
new_im=uint8(new_im);
end

