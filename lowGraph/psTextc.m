	
function psTextc(fid,x,y,s)
%psTextc(fid,x,y,s)
%plots the string s centered at (x,y)
	fprintf(fid, '%f %f (%s) dup stringwidth pop 2 div\r\n', x, y, s);
	fprintf(fid, '4 -1 roll exch sub 3 -1 roll moveto show\r\n');
end