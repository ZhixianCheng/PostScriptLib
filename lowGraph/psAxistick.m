function [Xtick,Ytick] = psAxistick(fid,xylim,x_nTick,y_nTick)
%[Xtick,Ytick] = psAxistick(fid,xylim,x_nTick,y_nTick)
%return the position of tick in the axis coordinate
%and draw the ticks as well

    Xtick = linspace(0,xylim(3),x_nTick);
	Ytick = linspace(0,xylim(4),y_nTick);
    
        for i = 1:x_nTick
         psLine(fid,Xtick(i),0,Xtick(i),5);
        end
    
    	for i = 1:y_nTick
         psLine(fid,0,Ytick(i),5,Ytick(i));
       end
    
    
end