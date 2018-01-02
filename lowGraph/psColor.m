function psColor(fid,c)
%psColor(fid,c) sets the color as specified by c ([r,g,b])
            fprintf(fid, '%f %f %f setrgbcolor\r\n', c(1), c(2), c(3)); %write to the .ps file   czx
        end