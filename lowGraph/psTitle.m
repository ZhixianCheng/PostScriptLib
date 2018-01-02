function psTitle(fid,xylim,titStr)
%psTitle(fid,xylim,title)
%print the title string specified by the axis xylim
	fprintf(fid,'(%s) dup stringwidth pop %f exch sub 2 div %f moveto\r\n',titStr,xylim(3), xylim(4)+6); 
	fprintf(fid,'(%s) show\r\n',titStr);
end


