
fid  = psFigure('template.ps','w+');
%% set up the axis
xylim = psAxis(fid,xorig,yorig,weight,height);
[x,xlab,Xtick] = psXlim(xdata,xaxismin,xaxismax,xylim,nxTick); % map the session number to the x-axis
[y,ylab,Ytick] = psYlim(ydata,yaxismin,yaxismax,xylim,nyTick);%map the Y and Yerr to the y-axis
 
%% code for plot

%% set up the labels
 
 psXtick(fid,Xtick);
 psXtickLabel(fid,Xtick,xlab);
 psYtick(fid,Ytick);
 psYtickLabel(fid,Ytick,ylab);
 psXlabel(fid,xylim,'Session');
 psYlabel(fid,xylim,'Coefficient');
 psTitle(fid,xylim,'Regression on chooseSum');
 
psLegend(fid,xylim,'',{'legend1','legend2', 'and so on'},color,lenfontsize);
psVisible(fid)