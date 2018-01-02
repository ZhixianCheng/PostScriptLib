function psPlotErrorBand(fid,x,y,yerr,sc)
 %psPlotErrorBand(fid,x,y,yerr,sc)
 %generate a errorbar plot for data (x,y,yerr)
   
   psAlpha(fid,0.5)
   psColor(fid,sc)
   if (size(x,1)==1)||(szie(x,2)==1)
       x = x(:);
       y = y(:);
       yerr = yerr(:);
   end
if size([x;flipud(x)],2) >1
    error('Input should be column vector!')
end
   psPatch(fid, [x;flipud(x)],[y-yerr;flipud(y+yerr)]);
   psAlpha(fid,1)
   
   psColor(fid,sc)
   psLineSeg(fid,x,y);
   psColor(fid,[0,0,0]);
   
end