function fin = scoreZeroer(scMat)
[y,x]= size(scMat);
minV =min(scMat(y,:));
    for j=1:x
       if (scMat(y,j)==minV)
           scMat(y,j)=777;
           temp=j;
       end
    end
    j=temp;
    while(y~=1)
    y = y - 1;
   
        if(j==1)
            a=scMat(y, j+1);
            b=scMat(y, j);
           smallNextPx=min(a , b); 
           if(smallNextPx==a)
               scMat(y,j+1)=777;
               j=j+1;
           else
               scMat(y,j)=777;
           end
        elseif(j==x)
            a=scMat(y, j-1);
            b=scMat(y, j);
           smallNextPx=min(a, b); 
           if(smallNextPx==a)
               scMat(y,j-1)=777;
               j=j-1;
           else
               scMat(y,j)=777;
           end
        else
            a=scMat(y, j-1);
            b=scMat(y, j);
            c=scMat(y, j+1);
            smallNextPx=min(a,min(b,c));
            if(smallNextPx==a)
               scMat(y,j-1)=777;
               j=j-1;
            elseif(smallNextPx==b)
               scMat(y,j)=777;
            else
                scMat(y,j+1)=777;
                j=j+1;
           end
        end
    
    

    end
    fin=scMat;
end