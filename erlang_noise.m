function [ result ] = erlang_noise( image,a,b )
[H W L]=size(image);
for k=1:L
for i = 1:256
    %pixels=round((((a.^b)*(i.^(b-1)))/(factorial(b-1)))*exp(-a*i)*H*W);
   pixels=   round(( a* ((b-1).^(b-1)) )* ( exp(-b+1) ) / ( factorial(b-1) ));
   %pixels= round((( a^b )*( i^(b-1)  ) * expm(-1*a*i))/( factorial(b-1) ));
  % pixels=pixels*H*W;
    for j = 1 :pixels
        r=ceil(rand(1,1)*H);
        c=ceil(rand(1,1)*W);
        image(r,c,k)=image(r,c,k)+i;
    end
end
end
image = min(max(image, 0), 255);

result=uint8(image);
end