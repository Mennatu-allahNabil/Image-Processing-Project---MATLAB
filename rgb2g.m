function [gray] = rgb2g(image,option)

 [h w l]=size(image);
 gray=zeros(h,w);
 
 %red
 if option ==1
    
               gray=image(:,:,1);

   
 end
 
 %green
  if option==2
             gray=image(:,:,2);
  end 
       
  %blue
      if option==3
             gray=image(:,:,3);
          end
     %mean
          if option==4
              for i=1:w
                  for j=1:h
            gray=double(gray);  
            gray(i,j)=(image(i,j,1)+image(i,j,2)+image(i,j,3))/3;
            gray=uint8(gray);
                  end
              end
          end  
      % random
          if option==5
              for i=1:w
                  for j=1:h
            gray=double(gray);  
            gray(i,j)=0.4*image(i,j,1)+0.1*image(i,j,2)+0.5*image(i,j,3);
            gray=uint8(gray);
                  end
              end
           
          end  

 
end
