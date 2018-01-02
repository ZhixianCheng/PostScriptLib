        function psFillSquare(obj,x,y,sz)
        %psFillSquare(obj,x,y,sz)
        %draws a square with centered at (x,y)
        %sz: the radius of square
        psFillRectangle(obj,x-sz,y-sz,sz*2,sz*2)
        end