function fin=removeZeros(orgImg, zeroMat)
[y,x]=size(orgImg);
newImg=zeros(y, x-1);

for i=1:y
%     tempArr=zeroMat(i,:);
%     toDel=;
%     noDel=orgImg(i,:);
    n=1;
    for j=1:x
        if(zeroMat(i,j)~=0)
        newImg(i, n)= orgImg(i,j);
        n=n+1;
        end
    end
    
%     noDel(find(tempArr==0))=[];
%     newImg(i,:)=noDel;
end
% result(i)=uint8(cdf(i)*255);
fin=newImg;
end