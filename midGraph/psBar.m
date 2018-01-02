function psBar(fid,x,y,spacing)
%psBar(fid,x,y,spacing) takes (x,y) as input to plot the bar.
%spacing defines the space between bars
if nargin<4
    spacing = 1;
end
    if length(x)==1
        error('Please call this function for at least two bars')
    end
    bar_width = (x(2) - x(1))*spacing;
    for i = 1:length(x)
        psColor(fid,[0.5 0.5 0.5])
      psFillRectangle(fid,x(i) - bar_width/2,0,bar_width,y(i)); %bar face
      psColor(fid,[0 0 0])
      psRectangle(fid,x(i) - bar_width/2,0,bar_width,y(i));%bar edge
      
    end
end