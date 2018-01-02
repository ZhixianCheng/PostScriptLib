        function psDashLine(fid,x1,y1,x2,y2) 
            fprintf(fid,'[%f] %f setdash\r\n',2,1);
            psLine(fid,x1,y1,x2,y2)
            fprintf(fid,'[] %f setdash\r\n',0);
        end