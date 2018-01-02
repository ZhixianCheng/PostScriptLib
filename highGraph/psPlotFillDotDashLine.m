function psPlotFillDotDashLine(fid,x,y)
%psPlotFillDotLine(fid,x,y)

	r = ones(size(x))*5; 
	for i = 1:length(x)
	psFillCircle(fid, x(i), y(i), r(i));
    end
    fprintf(fid,'[%f] %f setdash\r\n',2,1);
    psLineSeg(fid,x,y);
    fprintf(fid,'[] %f setdash\r\n',0);
end