
function [x,y,xlab,ylab] = psData2Axis(x,y,xylim,x_nTick,y_nTick)
%[x,y,xlab,ylab] = psData2Axis(x,y,xylim,x_nTick,y_nTick)
%maps the data the axis specified by xylim
%Since the the location of the tick is determined by the axis;
%the label is determined by the data, this function also returns 
%the labels that you might need
% You can use user-defined labels as well


	xminmax = [floor(min(x) - 0.05*range(x)),ceil(max(x)+0.05*range(x))];
	yminmax = [floor(min(y) - 0.05*range(y)),ceil(max(y)+0.05*range(y))];
	x = (x - xminmax(1))./ (xminmax(2) - xminmax(1))*xylim(3);
	y = (y - yminmax(1))./ (yminmax(2) - yminmax(1))*xylim(4);
	xlab_temp = linspace(xminmax(1),xminmax(2),x_nTick);
	ylab_temp = linspace(yminmax(1),yminmax(2),y_nTick);
		for i = 1:x_nTick
            xlab{i} = num2str(xlab_temp(i));
        end
        for i = 1:y_nTick
            ylab{i} = num2str(ylab_temp(i));
		end
end
