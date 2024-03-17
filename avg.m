function [avg_im] = avg(image)

[h, w, L] = size(image);
%kernel = [1 1 1 ; 1 1 1; 1 1 1];
avg_im = double(zeros(h, w ,L));
pad_im = padding_copy(image,3);

for level=1: L
    for i = 2:h+1
        for j = 2:w+1
            summ = 0;
            summ=double(summ);
      
            for ii= -1 : 1
                for jj= -1 : 1
                    summ=double(pad_im(i+ii,j+jj,level))+summ;
                end
            end
            avg_im(i-1,j-1,level) = round(summ / 9);
      
        end
        
   end         

end


avg_im = uint8(avg_im);

end
