function [new_img] = logg(old_image,index)
%index here to choose between log or inverse 
[h ,w ,L]=size(old_image);
gamma=2;
c=2;
%log_rgb=zeros(h,w);
%log_gray=zeros(h,w);
new_img=zeros(h,w,L);
new_img=im2double(new_img);
old_image=im2double(old_image);%علشان يشتغل من 0 ل 1
for i =1:h
    for j =1:w
        if index==1
            if L==3 % if log & rgb
                new_img(i,j,1)=c*log((old_image(i,j,1))+1);
                new_img(i,j,2)=c*log((old_image(i,j,2))+1);
                new_img(i,j,3)=c*log((old_image(i,j,3))+1);
            else % if log & gray
                new_img(i,j)=c*log((old_image(i,j))+1);
            end
        end
        if index==2
            if L==3 % if expo & rgb
                new_img(i,j,1)=exp(old_image(i,j,1)).^(1/2)-1;
                new_img(i,j,2)=exp(old_image(i,j,2)).^(1/2)-1;
                new_img(i,j,3)=exp(old_image(i,j,3)).^(1/2)-1;
            else % if exp & gray
                new_img(i,j)=exp((old_image(i,j))).^(1/2)-1;
            end
        end  
        if index==3
            
            if L==3 % if power & rgb
                new_img(i,j,1)=old_image(i,j,1).^gamma;
                new_img(i,j,2)=old_image(i,j,2).^gamma;
                new_img(i,j,3)=old_image(i,j,3).^gamma;
             else % if power & gray
                new_img(i,j)=old_image(i,j).^gamma;
             end
        end
         if index==4
             c2=2;
             if L==3 % if root & rgb
                % new_img(i,j,1)=c*sqrt(old_image(i,j,1));
                 %new_img(i,j,2)=c*sqrt(old_image(i,j,2));
                 %new_img(i,j,3)=c*sqrt(old_image(i,j,3));
                 new_img(i,j,1)=c*old_image(i,j,1).^(1/c2);
                 new_img(i,j,2)=c*old_image(i,j,2).^(1/c2);
                 new_img(i,j,3)=c*old_image(i,j,3).^(1/c2);
             else % if root & gray
                %new_img(i,j)=c*sqrt(old_image(i,j));
                new_img(i,j,1)=c*old_image(i,j,1).^(1/c2);
             end
        end
         if index==5
             if L==3 % if negative & rgb
                 new_img(i,j,1)=1-old_image(i,j,1);
                 new_img(i,j,2)=1-old_image(i,j,2);
                 new_img(i,j,3)=1-old_image(i,j,3);
             else % if root & gray
                new_img(i,j)=1-old_image(i,j);
             
         
             end
         end
    end  
end 
new_img=im2uint8(new_img);

if L==3
   % figure,imshow(log_rgb);
end
if L==1
  %  figure,imshow(log_gray);
end



end

