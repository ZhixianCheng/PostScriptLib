        function psPatch(obj, x, y) 
        %psPatch(obj, x, y) 
        %can be used to plot a shaded area with irregular shape
         %remove the nan from the data %20170726 czx
        x = x(:);
        y = y(:);
        nanindex = isnan(x)|isnan(y);
        x(nanindex) = [];
        y(nanindex) = [];
        %remove the nan from the data %20170726 czx
            fprintf(obj, 'newpath\r\n');
            fprintf(obj, '%f %f moveto\r\n', x(1), y(1));
            for i=2:length(x)
                fprintf(obj, '%f %f lineto\r\n', x(i), y(i));
            end
            fprintf(obj, 'closepath\r\n');        % this is how it differs from the          
            fprintf(obj, 'fill\r\n');                
        end 