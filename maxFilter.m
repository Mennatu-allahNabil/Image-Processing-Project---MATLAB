function [output] = maxFilter(original_img)
    %noisy = original_img;
    %y=rand(size(noisy));
    %noisy(y(:)>0.5)=0; %to make noise in image :-)
    [m, n,L] = size(original_img);
    output = zeros(m, n);
for k=1:L
    for i = 1:m
        for j = 1:n
           
            
            %%current kernel : 3x3
            xmin = max(1, i - 1);
            xmax = min(m, i + 1);
            ymin = max(1, j - 1);
            ymax = min(n, j + 1);

            temp = original_img(xmin:xmax, ymin:ymax,k);
            %take the max value
            output(i, j,k) = max(temp(:));
            %the end :-)       
        end
    end
end 
   
    output = uint8(output);
   
end