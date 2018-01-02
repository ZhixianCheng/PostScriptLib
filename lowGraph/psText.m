function psText(fid,x,y,s)
%psText(fid,x,y,s)
%print the string s starting from (x,y)
	fprintf(fid, '%f %f moveto\r\n', x, y);
	fprintf(fid, '(%s) show\r\n', s);
end

