function psHist(fid,xylim,data,xrange,xStr,titStr)
% psHist(fid,xylim,data,xrange,xStr,titStr)
% get the histogram 
% xrange: 1x2 vector that contains that lower and upper bound

        h = histogram(data) ;
        x_center = h.BinEdges + h.BinWidth/2;
        [x,xlab,xtick] = psXlim(x_center,xrange(1),xrange(2),xylim,6);
        [y,ylab,ytick] = psYlim(h.Values,0,max(h.Values)+2,xylim,6);
         psBar(fid,x(1:end-1),y);
         psXtick(fid,xtick);
         psXtickLabel(fid,xtick,xlab);
         psYtick(fid,ytick);
         psYtickLabel(fid,ytick,ylab);
         psTitle(fid,xylim,titStr);
         psXlabel(fid,xylim,xStr)
end