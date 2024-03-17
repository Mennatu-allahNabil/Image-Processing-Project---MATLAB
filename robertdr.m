function [filtered] = robertdr(image)

[h, w, L] = size(image);
kernel = [0 1 0 ; -1 0 0; 0 0 0];
filtered = double(zeros(h, w ,L));
pad_im = padding_copy(image,3);
neighbours=zeros(3,3);

for level=1:L
 for i = 2:h+1
        for j = 2:w+1
            summ = 0;
            summ=double(summ);
            neighbours=double(pad_im(i-1:i+1,j-1:j+1,level));
            for ii= 1 : 3
                for jj= 1 : 3
                    summ=neighbours(ii,jj)*kernel(ii,jj)+summ;
                end
            end
            filtered(i-1,j-1,level) = round(summ);
      
        end
        
 end    
end
filtered = uint8(filtered);



end

