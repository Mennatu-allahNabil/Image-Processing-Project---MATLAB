function [noisy_image] = Salt_Pepper(image,ps,pp)

[h w L]=size(image);
noisy_image=double(zeros(h,w,L));

num_of_S=round(ps*w*h);
num_of_P=round(pp*w*h);

for level=1:L
    
    for i =1 : num_of_S
        row=ceil(rand(1,1)*h);
        col=ceil(rand(1,1)*w);
        image(row,col,level)=255;

    end
     for j =1 : num_of_P
        row=ceil(rand(1,1)*h);
        col=ceil(rand(1,1)*w);
        image(row,col,level)=0;

    end
end
noisy_image=image;
noisy_image=uint8(noisy_image);

end

