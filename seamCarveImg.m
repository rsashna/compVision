function fin = seamCarveImg(inIm, val, numOfPx)
inIm2=inIm;

for i=1:numOfPx
scMat = scoreM(inIm2, 1);
zerod = scoreZeroer(scMat);
remvd = removeZeros(inIm2, zerod);
inIm2 = im2double (remvd);
end

fin=inIm2;
end