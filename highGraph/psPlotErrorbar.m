function psPlotErrorbar(fid,x,y,yerr,sc,xylim,x_nTick,y_nTick)
 %psPlotErrorbar(fid,x,y,yerr,sc)
 %generate a errorbar plot for data (x,y,yerr)
 %The data have been mapped to the axis 
%specified by xylim
%Currently, the plot is not that flexible. We can imporve it later.

	x_len = length(x);
	x_xerr = [x];
    if (size(y,1)==1)||(size(y,2)==1)
	y_yerr = [y(:);yerr(:)];
    end
    if size(y_yerr,2) > 1 
        error('x and y should be column vectors!');
    end
    if nargin == 4
        sc = [0 0 0];
    end
    if nargin >5
         [x_xerr,y_yerr] = psAxisAnchorAndTicklabel(fid,x_xerr,y_yerr,xylim,x_nTick,y_nTick);
    end
	
	psColor(fid,sc);
    psLineSeg(fid,x_xerr(1:x_len),y_yerr(1:x_len));
    
%     psError(fid,x_xerr(1:x_len),y_yerr(1:x_len),[],y_yerr(1+x_len:2*x_len),marker,sz)
	
   	r = ones(size(x))*3;    
	for i = 1:x_len
	psCircle(fid, x_xerr(i), y_yerr(i), r(i));
	psLine(fid,x_xerr(i),y_yerr(i)-y_yerr(i+x_len),x_xerr(i),y_yerr(i)+y_yerr(i+x_len)); %this is the errorbar
    end
    psColor(fid,[0,0,0]);
end