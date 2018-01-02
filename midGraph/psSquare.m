        function psSquare(obj,x,y,sz)
        %psSquare(obj,x,y,sz)
        %draws a square centered at (x,y)
        %sz: the radius of square
        psRectangle(obj,x-sz,y-sz,2*sz,2*sz)
        end