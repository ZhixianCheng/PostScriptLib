        function psSetfontsize(fid, fontsize)
        %psSetfontsize(fid, fontsize)
        %sets the fontname and fontsize
            fprintf(fid, '/ArialMT findfont %f scalefont setfont\r\n',  fontsize);    %write to the .ps file      czx
        end