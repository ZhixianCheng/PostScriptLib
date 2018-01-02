        function psSetfont(fid, fontname, fontsize)
        %psSetfont(fid, fontname, fontsize)
        %sets the fontname and fontsize
            fprintf(fid, '/%s findfont %d scalefont setfont\r\n', fontname, fontsize);    %write to the .ps file      czx
        end