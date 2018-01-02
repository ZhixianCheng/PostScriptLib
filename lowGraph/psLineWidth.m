function psLineWidth(fid,line_width)
%psLineWidth(fid,line_width) sets the linewith.
%The setting is global and will override its previous setting
            fprintf(fid, '%f setlinewidth\r\n', line_width); %write to the .ps file   czx
end