function  psYtick(fid,Ytick)
%psYtick(fid,Ytick)
%psAxistick does all the jobs, there is no need to use it.
% psXtick might be removed from the library later

%If you did not use <psAxisAnchorAndTicklabel>,
% you can use this draw the ticks.
% The position of ytick is returned by <psAxisTick>.

%Note that the location of ticks is mapped to the dimension of the axis width and
%height in points
	for i = 1:length(Ytick)
	 psLine(fid,0,Ytick(i),-2,Ytick(i));
	end
end