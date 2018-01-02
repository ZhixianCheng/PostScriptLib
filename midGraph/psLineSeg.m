function psLineSeg(fid,x,y)
 %psLineSeg(fid,x,y) draw a linesegment with coordinates (x,y),
 % color and linewidth are determined by the lastest setting
%  if nargin ==3
% 	 color = [0 0 0];
% 	 linewidth = 1;
%  elseif nargin == 4 | nargin ==2 | nargin ==1
% 	error('You might need to specify the color and linewidth properly!');
%  end
 %remove the nan from the data %20170726 czx
 x = x(:);
 y = y(:);
 nanindex = isnan(x)|isnan(y);
x(nanindex) = [];
y(nanindex) = [];
%remove the nan from the data %20170726 czx
	for i = 1:length(x)
        if i == 1
            fprintf(fid,'newpath\r\n');
            fprintf(fid,'%f %f moveto\r\n',x(1),y(1));
        end
        fprintf(fid,'%f %f lineto\r\n',x(i),y(i));
    end
    fprintf(fid,'stroke\r\n');	

end
