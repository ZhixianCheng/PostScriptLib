function psPlus(fid,x,y,sz)
%psPlus(fid,x,y,sz) draws a Plus with size sz centered at (x,y)
psLine(fid,x,y-sz/2,x,y+sz/2);
psLine(fid,x-sz/2,y,x+sz/2,y);
end