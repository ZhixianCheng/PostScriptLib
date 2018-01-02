function psCircle(fid,x,y,r) 
%psCircle(fid,x,y,r)
%draw a circle at the location (x,y) with radius <r>
if ~isnan(sum([x,y]))  %ignore the nan  %20170726 czx
	fprintf(fid, 'newpath\r\n');
	fprintf(fid, '%f %f %f 0 360 arc \r\n', x, y, r);
	fprintf(fid, 'closepath\r\n');
	fprintf(fid,'stroke\r\n');
end
end
