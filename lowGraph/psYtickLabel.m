function psYtickLabel(fid,Ytick,ylab)
%psYtickLabel(fid,Ytick,ylab)
%Note that the location of ticks is mapped to the dimension of the axis width and
%height in points
%tick labels are determined by the original range of the plotting data
    for i = 1:length(Ytick)
	 psTextc(fid,-15,Ytick(i)-5,ylab{i});
	end
end