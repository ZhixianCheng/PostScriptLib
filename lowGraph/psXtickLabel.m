function psXtickLabel(fid,Xtick,xlab)
%psXtickLabel(fid,Xtick,xlab)
%Note that the location of ticks is mapped to the dimension of the axis width and
%height in points
%tick labels are determined by the original range of the plotting data
    for i = 1:length(Xtick)
	 psTextc(fid,Xtick(i),-15,xlab{i});
	end
end