function xylim = psAxis(fid,xmin,ymin,width,height)
%xylim = psAxis(fid,xmin,ymin,width,height)
% set up a axis for plotting without ticks and return
% the dimension of the axis
if nargin ==1
    xylim = [150,200,300,300];
else
	xylim = [xmin,ymin,width,height];
end
	fprintf(fid,'newpath\r\n');
%     psLineWidth(fid,1.5)
	fprintf(fid,'%f %f translate\r\n',xmin,ymin); 
	fprintf(fid,'0 0 moveto\r\n');
	fprintf(fid,'0 %f rlineto\r\n',height);
	fprintf(fid,'0 0 moveto\r\n');
	fprintf(fid,'%f 0 rlineto\r\n',width);
	fprintf(fid,'stroke\r\n');
end