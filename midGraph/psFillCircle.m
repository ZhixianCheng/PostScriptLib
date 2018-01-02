function psFillCircle(fid,x,y,r) 
%psFillCircle(fid,x,y,r) creates a filled circle 
%centered at (x,y) with radius r
if ~isnan(sum([x,y]))  %ignore the nan  %20170726 czx
	fprintf(fid, 'newpath\r\n');
	fprintf(fid, '%f %f %f 0 360 arc \r\n', x, y, r);
	fprintf(fid, 'closepath\r\n');
	fprintf(fid,'fill\r\n');
end
end