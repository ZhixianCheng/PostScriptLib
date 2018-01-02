    fid = psFigure('test.ps'); 
 	AxisScale = [150,200];
 	AxisLineWidth = 3;
	x_nTick = 5;
    y_nTick = 5;
    %set up the axis
 	xylim = psAxis(fid,100,100, 1*AxisScale(1), 1*AxisScale(2));
    %input data
	x = 1:5;
	y = rand(1,5)*10+100;
	yerr = rand(5,1)*10;
    %plot figure
    psAlpha(fid,0.5);
	psPlotFillDotLine(fid,x,y,xylim,x_nTick,y_nTick);
%     [Xtick,Ytick,xlab,ylab] = psAxistick(fid,xylim,nTick);
%     psXtickLabel(fid,Xtick,xlab);
%     psYtickLabel(fid,Ytick,ylab);
    psTitle(fid,xylim,'Figure test');
    psXlabel(fid,xylim,'Xlabel');
    psYlabel(fid,xylim,'Ylabel');
    
    
% 	psPlotEmptyDotLine(fid,x,y,xylim,nTick);
% 	psErrorbar(fid,x',y',yerr,xylim,nTick)

%%
xylim1 = psAxis(fid,300-100,100-100, 1*AxisScale(1), 1*AxisScale(2));