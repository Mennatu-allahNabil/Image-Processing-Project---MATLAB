function [bi] = gray2bi(image,treshold)
 [h w]=size(image);
 bi=zeros(h,w);

 for i=1 : h
     for j=1 : w
         if image(i,j) >= treshold
             bi(i,j)= 1 ;
         else
             bi(i,j)= 0 ;
         end
     end
     
 end
  bi=logical(bi);
end

