function psPlotLine(fid,x,y,xylim,x_nTick,y_nTick)
%psPlotLine(fid,x,y,xylim,x_nTick,y_nTick)
%draws a line in the axis specified xylim
% the ticks and ticklabels are drawn automatically
   [x,y] = psAxisAnchorAndTicklabel(fid,x,y,xylim,x_nTick,y_nTick);
    psLineSeg(fid,x,y);
end