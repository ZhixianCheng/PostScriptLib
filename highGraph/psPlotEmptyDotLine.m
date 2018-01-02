function psPlotEmptyDotLine(fid,x,y,xylim,x_nTick,y_nTick)
%psPlotEmptyDotLine(fid,x,y,xylim,nTick)
%draws a line with empty dots in the axis specified xylim
% the ticks and ticklabels are drawn automatically
   [x,y] = psAxisAnchorAndTicklabel(fid,x,y,xylim,x_nTick,y_nTick);
	r = ones(size(x))*5; 
	for i = 1:length(x)
	psCircle(fid, x(i), y(i), r(i));
    end
    psLineSeg(fid,x,y);
end