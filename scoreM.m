function fin=scoreM(img, num)

% if(num == 2)
img1 = img; 
% elseif(num == 1)
%     img1 = imrotate(img, 90);
% end

[y,x]=size(img1);
[imgGradX, imgGradY] = imgradientxy(img1);
% figure(4041)
% imshow(imgGradX);
% figure(4042)
% imshow(imgGradY);
imgGradW=imgGradX + imgGradY;
imgGradX = imgGradW;


% figure(4043)
% imshow(imgGradW);


minVal=min(min(imgGradX));
imgGradX = imgGradX + abs(minVal);

scM=ones(y,x);
scM=scM.*256;
scM(1,:)=imgGradX(1,:);
% done till here
for i=2:y
    for j=1:x
   
        if(j==1)
            a=scM(i-1, j+1);
            b=scM(i-1, j);
           smallNextPx=min(a , b); 
        elseif(j==x)
            a=scM(i-1, j-1);
            b=scM(i-1, j);
           smallNextPx=min(a, b); 
        else
            a=scM(i-1, j-1);
            b=scM(i-1, j);
            c=scM(i-1, j+1);
            smallNextPx=min(a,min(b,c));
        end
        scM(i,j)=imgGradX(i,j) - smallNextPx;
        
    end
end
fin = scM;
end