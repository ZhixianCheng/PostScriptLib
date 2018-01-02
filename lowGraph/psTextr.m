function psTextr(fid,x,y,s)
%psTextr(fid,x,y,s)
%prints the string s terminated at (x,y)
	fprintf(fid, '%f %f (%s) dup stringwidth pop\r\n', x, y, s);
	fprintf(fid, '4 -1 roll exch sub 3 -1 roll moveto show\r\n');
end
