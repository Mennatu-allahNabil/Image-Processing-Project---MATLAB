function [output] = midpointFilter(original_img)
   % noisy = original_img;
   % y=rand(size(noisy));
   % noisy(y(:)>0.95)=255; %to make noise in image :-)
    [m, n,L] = size(original_img);
    output = zeros(m, n,L);
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
            %take the min value
            max1=max(temp(:));
            min1=min(temp(:));
            output(i, j,k) = double((min1+max1)/2);
            %the end :-)       
        end
    end
end   
    
    output = uint8(output);

end