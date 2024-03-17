function [] = equal_histo(image)
[h w L]=size(image);

his=zeros(256,1,L);



result=uint8(zeros(h,w,L));
for k=1 : L
    histo=zeros(256,1);
    pdf=zeros(256,1);
pdf=double(pdf);

sk=zeros(256,1);

%calculate histogram
for i = 1:h
    for j = 1:w
        
        r = image(i, j,k) + 1;
        histo(r) = histo(r) + 1;
        
    end
end

%calculate pdf && cdf
total=h*w;
cdf=0;
cdf=double(cdf);

for i=1:256
    pdf(i)= histo(i) / total;
    cdf = cdf + pdf(i);
    sk(i) = round( cdf * 255 );
end
   
%apply equlization
for i = 1:h
    for j = 1:w
        r = image(i, j,k) + 1;
        result(i,j,k) = sk(r);
    end
end


for i = 1:h
    for j = 1:w
        r = result(i, j,k) + 1;
        histo(r) = histo(r) + 1;
    end
end

if k==1 
    bar(histo,'r');
end
if k==2
        bar(histo,'g');
end
if k==3
        bar(histo,'b');
end

%display the eq histogram
%figure;
%bar(histo);
%title("Equalized Histogram Level "+k);
grid on;
hold on

end
%RGB
%if L==3
%equalizedRGBImage = cat(3, result(:,:,1),  result(:,:,2),  result(:,:,3));

% Display the images before && after
%figure;
%subplot(1, 2, 1);
%imshow(image);
%title('Original Image');


%subplot(1, 2, 2);
%imshow(equalizedRGBImage);
%title('Equalized Image');
%end


%GRAY
%if L==1
    % Display the images before && after
%figure;
%subplot(1, 2, 1);
%imshow(image);
%title('Original Image');


%subplot(1, 2, 2);
%imshow(result);
%title('Equalized Image');
%end

end


