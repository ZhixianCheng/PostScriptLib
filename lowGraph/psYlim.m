function [y,ylab,Ytick] = psYlim(y,ymin,ymax,axislim,y_nTick)
% [y,ylab,Ytick] = psYlim(y,ymin,ymax,axislim,y_nTick)
%maps the data the axis specified by xylim
%determines the data range by specifying [xmin,xmax]
%Since the the location of the tick is determined by the axis;
%the label is determined by the data, this function also returns 
%the labels that you might need
% You can use user-defined labels as well  

if nargin==4
    y_nTick = 5; % 5 ticks may be a good start point
end
% % %   if ymin~=0% if xmin ~= 0, you should not compute the error bar directly using this function czx20171207
% % %       sound(randn(1000,1))
% % %   end
	y = (y - ymin)./ (ymax - ymin)*axislim(4);% map y to the Y-axis
    
% arrange the ticks on Y-axis
	ylab_temp = linspace(ymin,ymax,y_nTick);
    
    y_scale = mean(diff(ylab_temp));

    if y_scale>=100
        ystep = round(y_scale,-2);
    elseif (y_scale>=10)&&(y_scale<100)
        ystep = round(y_scale,-1);
    elseif (y_scale>=1)&&(y_scale<10)
        ystep = round(y_scale);
     elseif (y_scale>=0.1)&&(y_scale<1)
        ystep = round(y_scale,1);
     elseif (y_scale>=0.01)&&(y_scale<0.1)
        ystep = round(y_scale,2);
     elseif (y_scale>=0.001)&&(y_scale<0.01)
        ystep = round(y_scale,3);
    else
       error('Please scale your data to reasonable range!')
    end
    % generate a new xlab_temp
    if (ymin<0)&&(numel(ymin:ystep:0)>1)
        negY = 0:-ystep:ymin;
        posY = 0:ystep:ymax;
       ylab_temp = [fliplr(negY) posY(2:end)];    
    else
       ylab_temp = 0:ystep:ymax;    
    end
        
		for i = 1:numel(ylab_temp)
            ylab{i} = num2str(ylab_temp(i));
        end
        
    Ytick =  (ylab_temp - ymin)./ (ymax - ymin)*axislim(4); 
end







