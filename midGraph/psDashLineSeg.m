        function psDashLineSeg(fid,x,y)
 %psDashLineSeg(fid,x,y) draw a linesegment with coordinates (x,y),
 % color and linewidth are determined by the lastest setting
            fprintf(fid,'[%f] %f setdash\r\n',2,1);
            psLineSeg(fid,x,y)
            fprintf(fid,'[] %f setdash\r\n',0);
        end