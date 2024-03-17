function []= his(img)
[H ,W,L]=size(img);
if L==3

 for ii=1:3
    h=img(:,:,ii);
    [H ,W]=size(h);    
    histo=zeros(256,1);
    for i=1:H
       for j=1:W
        
          histo(h(i,j)+1)=histo(h(i,j)+1)+1;
       end
    end

    %n=0:255;
    switch ii
      case 1
         bar(histo,'r');
      case 2
          bar(histo,'g');
       case 3
          bar(histo,'b');
        
     end
%histo=bar(histo);
     grid on;
     hold on
 end

else
    [H ,W]=size(img);    
    histo=zeros(256,1);
    for i=1:H
       for j=1:W
        
          
           histo(img(i,j)+1)=histo(img(i,j)+1)+1;
       end
    end
   bar(histo);
end