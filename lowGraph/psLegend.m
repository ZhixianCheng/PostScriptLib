function psLegend(fid,xylim,lenStr,uni_x,sc,lenfontsize,dashFlag)
%psLegend(fid,xylim,lenStr,uni_x,sc,lenfontsize,dashFlag)
%This function sets up the legend
%lenStr is the title of the legend, sometimes are empty.
%uni_x is the legend cell or a set of numbers
% add dashFlag at 20170714 to consider the dashlines in the legend

if nargin <7
    dashFlag = zeros(size(uni_x));
end
% set the legend title
psSetfontsize(fid, lenfontsize)
yoffset = 17;
xylim(4) = xylim(4)-yoffset;
psText(fid,xylim(3)*1.01,xylim(4)+2,lenStr);
if ~iscell(uni_x) % for automatically set color and legend for uni_x
	mulSC = linspace(0,1,length(uni_x));

	%set up the line and text 
	for i = 1:length(uni_x)
	  psColor(fid,mulSC(i)*sc);
      if dashFlag(i)==0
	  psLine(fid,xylim(3)*1.01,xylim(4) - lenfontsize*i,xylim(3)*1.05,xylim(4) - lenfontsize*i);
      else
      psDashLine(fid,xylim(3)*1.01,xylim(4) - lenfontsize*i,xylim(3)*1.05,xylim(4) - lenfontsize*i);
      end
	  psText(fid,xylim(3)*1.05,xylim(4) -3 - lenfontsize*i,num2str(uni_x(i)));
	end
else
	for i = 1:size(uni_x,2) % uni_x is a cell with legend str, lenStr is empty
	  psSetfontsize(fid,lenfontsize);
	  psColor(fid,sc{i});
      if dashFlag(i)==0
	  psLine(fid,xylim(3)*1.01,xylim(4) - lenfontsize*i,xylim(3)*1.05,xylim(4) - lenfontsize*i);
      else
      psDashLine(fid,xylim(3)*1.01,xylim(4) - lenfontsize*i,xylim(3)*1.05,xylim(4) - lenfontsize*i);  
      end
	  psText(fid,xylim(3)*1.05,xylim(4) -3 - lenfontsize*i,uni_x{i});
	end
end
psColor(fid,[0,0,0]);
psSetfontsize(fid,10);
end