function fin=imgCarve(img, num)

if(num == 2)
img1 = img; 
elseif(num == 1)
    img1 = imrotate(img, 90);
end

[y,x]=size(img1);
[imgGradX, imgGradY] = imgradientxy(img1);

for i=1:y
    for j=1:x
   
        if(i==y)
            Mimg(i,j)=imgGradX(i,j);
        elseif(j==1)
            a=imgGradX(i+1, j+1);
            b=imgGradX(i+1, j);
            c=256;
           smallNextPx=min(a , b); 
        Mimg(i,j)=imgGradX(i,j) + min(a,min(b,c));
        elseif(j==x)
            a=imgGradX(i+1, j-1);
            b=imgGradX(i+1, j);
            c=256;
           smallNextPx=min(a, b); 
        Mimg(i,j)=imgGradX(i,j) + min(a,min(b,c));
        else
            a=imgGradX(i+1, j-1);
            b=imgGradX(i+1, j);
            c=imgGradX(i+1, j+1);
        Mimg(i,j)=imgGradX(i,j) + min(a,min(b,c));
        end
        
    end
end


fin = img1;
end