function fin=removeZeros(orgImg, zeroMat)
[y,x]=size(orgImg);
newImg=zeros(y, x-1);

for i=1:y

    n=1;
    for j=1:x
        if(zeroMat(i,j)~=777)
        newImg(i, n)= orgImg(i,j);
        n=n+1;
        end
    end
    
end

fin=newImg;
% figure(404)
% imshow(newImg);
end