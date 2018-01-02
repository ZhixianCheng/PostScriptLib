%% how to draw nonsuplot figures
	%Step one: setup a page 
	fid = psFigure('singleFigures.ps'); 
	%Step two: setup the axis
	xylim = psAxis(fid,xmin,ymin,width,height);
	%Step three: get you data and map into into the axis range
	[x,y,xlab,ylab] = psData2Axis(x,y,xylim,tickNumber);
	%Step four: call some low-end functions
	psLineSeg(fid,x,y);
	%Step five: setup the axis and label
	psTitle(fid,xylim,'Figure test');
    psXlabel(fid,xylim,'Xlabel');
    psYlabel(fid,xylim,'Ylabel');
	%%Note that some high-level plotting functions has called
	% [x,y] = psAxisAnchorAndTicklabel(fid,x,y,xylim,nTick);
	% to setup their axistick and ticklabels automatically
	
	psXtick(fid,xtick);
	psYtick(fid,xtick);
    psXtickLabel(fid,xtick,xlab);
    psYtickLabel(fid,ytick,ylab);
	
%% how to draw a regular subplots
	%Step one: setup a page
	fid = psFigure('subplots.ps'); 
	%Step two: setup the axis by calling the function
    xylim = psSubplotAxis(fid,3,3,1);
	%Step three: for each subplot figure, do the same as the single plots
	x_nTick = 7;
	y_nTick = 5;
     [x,y,xlab,ylab] = psData2Axis(x,y,xylim,x_nTick,y_nTick);
	  [Xtick,Ytick] = psAxistick(fid,xylim,x_nTick,y_nTick);
	%you can use the 
    psXtickLabel(fid,xtick,xlab);
    psYtickLabel(fid,ytick,ylab);
	
	%%subplot(332)
    xylim = psSubplotAxis(fid,3,3,2);
     [x,y,xlab,ylab] = psData2Axis(x,y,xylim,x_nTick,y_nTick);
	 [Xtick,Ytick] = psAxistick(fid,xylim,x_nTick,y_nTick);
	%you can use the 
    psXtickLabel(fid,xtick,xlab);
    psYtickLabel(fid,ytick,ylab);

