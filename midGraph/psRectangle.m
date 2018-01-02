        function psRectangle(obj,x,y,w,h)
        %psRectangle(obj,x,y,w,h)
        %draws a rectangle with the lower point (x,y)
        %w: width; h: height
        if ~isnan(sum([x,y,w,h]))  %ignore the nan  %20170726 czx
            fprintf(obj, 'newpath\r\n');
            fprintf(obj, '%f %f moveto\r\n', x, y); %initial point
            fprintf(obj, '%f 0 rlineto\r\n', w);%to the right
            fprintf(obj, '0 %f rlineto\r\n', h);% up
            fprintf(obj, '%f 0 rlineto\r\n', -w);% left
            fprintf(obj, '0 %f rlineto\r\n', -h);%down
            fprintf(obj,'closepath\r\n');  % added to get rid of small artifact  %can use 'closepath' to remove the artifacts
            fprintf(obj, 'stroke\r\n');
        end
        end