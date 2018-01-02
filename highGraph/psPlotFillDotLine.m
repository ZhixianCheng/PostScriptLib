function psPlotFillDotLine(fid,x,y)
%psPlotFillDotLine(fid,x,y)

	r = ones(size(x))*5; 
	for i = 1:length(x)
	psFillCircle(fid, x(i), y(i), r(i));
    end
    psLineSeg(fid,x,y);
end