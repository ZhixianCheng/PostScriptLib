function psCross(fid,x,y,sz)
%psCross(fid,x,y,sz) draws a cross with size sz (similar to radius) centered at (x,y)
psLine(fid,x-sz,y-sz,x+sz,y+sz);
psLine(fid,x-sz,y+sz,x+sz,y-sz);
end