function psRaster(fid,x,y,sc)
%psRaster(fid,x,y,sc)
%Note: you should first use <psData2Axis> to map the data to the axis
%before you making the plotting. 
%draws little lines representing the timing of spks
if nargin>3
    psColor(fid,sc);
end
     psLineWidth(fid,0.2);
     for i = 1:length(x)
     psLine(fid,x(i),y(i),x(i),y(i)+0.5);
     end
     psLineWidth(fid,1); % keep the change of linewidth local in this function
     psColor(fid,[0 0 0]);
end