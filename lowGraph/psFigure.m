function fid = psFigure(filename,rwmode)
%fid = psFigure(filename)
%Create a ps file for writing
%set the font as Arial, fontsize as 12
%set the color as black
%set the linewith as 2
% you can set the values for other plots later
%!! if this figure is not the first one, you need to
%call <psVisible> to make it visible
	if nargin == 1
		fid = fopen(filename,'w+');
	else
		fid = fopen(filename,rwmode);
	end
%     fprintf(fid, '%%!PS\r\n');
    fprintf(fid, '%%!PS-Adobe\r\n');
	%for setting up the axis
	fprintf(fid,'/ArialMT findfont 10 scalefont setfont\r\n');
	fprintf(fid,'0 0 0 setrgbcolor\r\n');
	fprintf(fid,'1 setlinewidth\r\n');
	%Set a series of key to use 	
end