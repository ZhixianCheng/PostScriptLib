function psXlabel(fid,xylim,xlabStr)
%psXlabel(fid,xylim,xlabStr)
%sets the xlabel in the location specified by the axis xylim
	fprintf(fid,'(%s) dup stringwidth pop %f exch sub 2 div %f moveto\r\n',xlabStr,xylim(3), -25); 
	fprintf(fid,'(%s) show\r\n',xlabStr);
end

