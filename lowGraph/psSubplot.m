function xylim = psSubplot(fid,nRow,nCol,nFig)
%xylim = psSubplotA(fid,nRow,nCol,nFig)
%sets up the axis for drawing subplot in a figure,
%you MUST draw in the ordinate order without skipping any one!!
	pageWidth = 600;%point
	pageHeight = 800;%point
	leftMargin = 70;
	rightMargin = 40;
	topMargin = 50;
	bottomMargin = 70;
	horizontalDistance = 50;
	verticalDistance = 50;
	%Compute the location of the axis 
	AxisWidth = (pageWidth - leftMargin - rightMargin - horizontalDistance*(nCol - 1))/nCol;
	AxisHeight = (pageHeight - topMargin - bottomMargin - verticalDistance*(nRow - 1))/nRow;
	
	%compute the location of the figure
	rowInd = floor(nFig/nCol);
	colInd = mod(nFig,nCol);
	if colInd == 0
        colInd = nCol;
    end
if nCol>1    
   if colInd >1 %the second or later column, they will not be drawn first!
		xylim = psAxis(fid,AxisWidth+horizontalDistance,0,AxisWidth,AxisHeight);
   elseif rowInd==0  %The first drawed figure rowInd ==0, colInd = 1;
		xylim = psAxis(fid,leftMargin,pageHeight - topMargin - AxisHeight,AxisWidth,AxisHeight);
		%move the coordinate system to the point defined by the origin of the aixs
		%Note that the coordinate system is no longer the same as the page now
   else 
		xylim = psAxis(fid,-(nCol - 1)*(AxisWidth+horizontalDistance),-(AxisHeight+verticalDistance),AxisWidth,AxisHeight);
   end
else
    if rowInd==1
        xylim = psAxis(fid,leftMargin,pageHeight - topMargin - AxisHeight,AxisWidth,AxisHeight);
    else
        xylim = psAxis(fid,0,-(AxisHeight+verticalDistance),AxisWidth,AxisHeight);
    end
end

	
end