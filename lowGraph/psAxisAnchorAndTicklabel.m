function [x,y] = psAxisAnchorAndTicklabel(fid,x,y,xylim,x_nTick,y_nTick)
%[x,y] = psAxisAnchorAndTicklabel(fid,x,y,xylim,x_nTick,y_nTick)
%maps the original data to the axis defined by <psAxis>
%the mapping is done by <psData2Axis>
%Also automatically draw the axis ticks and labels
    [x,y,xlab,ylab] = psData2Axis(x,y,xylim,x_nTick,y_nTick);
	[xtick, ytick] = psAxistick(fid,xylim,x_nTick,y_nTick);
    psXtickLabel(fid,xtick,xlab);
    psYtickLabel(fid,ytick,ylab);
end