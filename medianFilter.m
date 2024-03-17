function [output] = medianFilter(original_img)
   % noisy = imnoise(original_img, 'salt & pepper',0.1);%to make noise in image :-)
    [m, n,L] = size(original_img);
    output = zeros(m, n);
for k=1:L
    for i = 1:m
        for j = 1:n
            %its 5x5 mask for filtering
            % if you want to modify it , just modify '2' to be number you
            % want
            
            %%current kernel : 3x3
            xmin = max(1, i - 1);
            xmax = min(m, i + 1);
            ymin = max(1, j - 1);
            ymax = min(n, j + 1);

            temp = original_img(xmin:xmax, ymin:ymax,k);
            %take the median value
            output(i, j,k) = median(temp(:));
            %the end :-)       
        end
    end
end   
   
    output = uint8(output);
 
end