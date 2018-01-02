function psVisible(fid)
%psVisible(fid)
%makes the plots in the second or later pages visible
       fprintf(fid, 'showpage\r\n');
end