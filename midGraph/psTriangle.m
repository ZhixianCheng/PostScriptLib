function psTriangle(fid,x,y,tsz,ori)
%psTriangle(fid,x,y,tsz,orie)
%this function draws a triangle with size 'tsz' and orientation 'ori' at location (x,y)
% to make things simpler, 'tsz' defines the length of the three edges.
% ori = 0 : the triangle points to the right;
% ori = 90: the triangle points upward;
% ori = 180: the triangle points leftward;
% ori = 270: the triangle points downward;
% CZX 20170831 
if nargin==3
    tsz = 2;
    ori = 0;
end

% currently, I use a stupid way to calculate just four orientations
% I will change it sometime later
if ori ==0
    psPatch(fid,[x,x-0.87*tsz, x-0.87*tsz],[y,y+0.5*tsz,y-0.5*tsz])
elseif ori == 90
    psPatch(fid,[x,x-0.5*tsz, x+0.5*tsz],[y,y-0.87*tsz,y-0.87*tsz])
elseif ori == 180
    psPatch(fid,[x,x+0.87*tsz, x+0.87*tsz],[y,y+0.5*tsz,y-0.5*tsz])
elseif ori == 270
    psPatch(fid,[x,x-0.5*tsz, x+0.5*tsz],[y,y+0.87*tsz,y+0.87*tsz])
end        

end