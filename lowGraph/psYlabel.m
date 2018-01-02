function psYlabel(fid,xylim,ylabel)
%psYlabel(fid,xylim,xlabStr)
%sets the ylabel in the location specified by the axis xylim
	fprintf(fid,'90 rotate\r\n');
	fprintf(fid,'(%s) dup stringwidth pop %f exch sub 2 div %f moveto\r\n',ylabel,xylim(4), 30); 
	fprintf(fid,'(%s) show\r\n',ylabel);
	fprintf(fid,'(%s) dup stringwidth pop 0 exch sub 0 rmoveto\r\n',ylabel); 
	fprintf(fid,'-90 rotate\r\n');
end
