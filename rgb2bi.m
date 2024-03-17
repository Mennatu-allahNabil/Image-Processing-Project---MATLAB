function [bw] = rgb2bi(image,treshold)

 g=rgb2g(image,2);
 bw=gray2bi(g,treshold);
  
end

