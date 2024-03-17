function [new_im] = padding_copy(image,mask_w)

[h w L]=size(image);

pad=floor((mask_w-1)/2);
new_h=h+pad*2;
new_w=w+pad*2;
new_im=zeros(new_h, new_w ,L);

for k=1:L

    %copy the og image to the new matrix
  for i=1 : h
    for j=1 : w
        new_im(i+pad,j+pad,k)=image(i,j,k);
    end
  end
  
  %apply the padding left side
    for i=1+pad:new_h-pad
       for j=1:pad
           new_im(i,j,k)=image(i-pad,1,k);
       end
    end
   
     %apply the padding right side
    for i=1+pad:new_h-pad
       for j=w+1:new_w
           new_im(i,j,k)=image(i-pad,w,k);
       end
   end
      %apply the padding top side
      i=pad;
    while i>0
       for j=1:new_w
           new_im(i,j,k)=new_im(i+1,j,k);
       end
       i=i-1;
    end
   
      %apply the padding top side
      i=h+1;
    while i<=new_h
       for j=1:new_w
           new_im(i,j,k)=new_im(i-1,j,k);
       end
       i=i+1;
   end
    
end
new_im=uint8(new_im);
end

