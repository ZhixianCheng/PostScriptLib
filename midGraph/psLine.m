function psLine(fid,x1,y1,x2,y2)
%psLine(fid,x1,y1,x2,y2)
%draw a line starts at (x1,y1) and ends at (x2,y2)
%the color and linewidth are determined by 
% the lastes setting
if ~isnan(sum([x1,y1,x2,y2]))  %ignore the nan  %20170726 czx
	fprintf(fid, 'newpath\r\n');
	fprintf(fid, '%f %f moveto\r\n', x1, y1); % start point
	fprintf(fid, '%f %f lineto\r\n', x2, y2); %end point
	fprintf(fid, 'stroke\r\n');    
end

end