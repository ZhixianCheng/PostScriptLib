
function [x,xlab,Xtick] = psXlim(x,xmin,xmax,axislim,x_nTick)
%[x,xlab,Xtick] = psXlim(x,xmin,xmax,axislim,x_nTick)
%maps the data the axis specified by xylim
%determines the data range by specifying [xmin,xmax]
%Since the the location of the tick is determined by the axis;
%the label is determined by the data, this function also returns 
%the labels that you might need
% You can use user-defined labels as well

if nargin==4
    x_nTick = 5; % 5 ticks may be a good start point
end
% % %   if xmin~=0 %if xmin ~= 0, you should not compute the error bar directly using this function, czx20171207
% % %       sound(randn(1000,1))
% % %   end
	x = (x - xmin)./ (xmax - xmin)*axislim(3); % map x to the X-axis
    
% arrange the ticks on X-axis
	xlab_temp = linspace(xmin,xmax,x_nTick);
    x_scale = mean(diff(xlab_temp));

    if x_scale>=100
        xstep = round(x_scale,-2);
    elseif (x_scale>=10)&&(x_scale<100)
        xstep = round(x_scale,-1);
    elseif (x_scale>=1)&&(x_scale<10)
        xstep = round(x_scale);
     elseif (x_scale>=0.1)&&(x_scale<1)
        xstep = round(x_scale,1);
    elseif (x_scale>=0.01)&&(x_scale<0.1)
        xstep = round(x_scale,2);
    elseif (x_scale>=0.001)&&(x_scale<0.01)
        xstep = round(x_scale,3);
    else
       error('Please scale your data to reasonable range!')
    end
    % generate a new xlab_temp
    if (xmin<0)&&(numel(xmin:xstep:0)>1)
        negX = 0:-xstep:xmin;
        posX = 0:xstep:xmax;
       xlab_temp = [fliplr(negX) posX(2:end)];   
    else
       xlab_temp = 0:xstep:xmax;    
    end
     if numel(xlab_temp)==0
         keyboard
     end
		for i = 1:numel(xlab_temp)
            xlab{i} = num2str(xlab_temp(i));
        end
        
    Xtick =  (xlab_temp - xmin)./ (xmax - xmin)*axislim(3); % map x to the X-axis
        
end
