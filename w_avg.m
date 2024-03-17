function [avg_im] = w_avg(image)

[h, w, L] = size(image);
kernel = [1 2 1 ; 2 4 2; 1 2 1];
avg_im = double(zeros(h, w ,L));
pad_im = padding_copy(image,3);
neighbours=zeros(3,3);

    for i = 2:h+1
        for j = 2:w+1
            summ = 0;
            summ=double(summ);
            neighbours=double(pad_im(i-1:i+1,j-1:j+1));
            for ii= 1 : 3
                for jj= 1 : 3
                    summ=neighbours(ii,jj)*kernel(ii,jj)+summ;
                end
            end
            avg_im(i-1,j-1) = round(summ / 16);
      
        end
        
   end         
avg_im = uint8(avg_im);





end
