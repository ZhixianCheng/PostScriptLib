function psScatter(fid,x,y,marker,sz)
%psScatter(fid,x,y,marker,sz)
% scatter plot with different shapes with size 'sz'
%marker = 'o': empty circle;
%       = 'fo': filled circle;
%       = 'x':cross
%       = 's': empty square;
%       = 'fs': filled square;
%
%default marker: empty circle
%% 
	x_len = length(x);
	
   	r = ones(size(x))*sz;    
	for i = 1:x_len
        if strcmp(marker,'o')
            psCircle(fid, x(i), y(i), r(i)); % empty cicle
        elseif strcmp(marker,'fo')
            psFillCircle(fid, x(i), y(i), r(i)); % filled cicle
        elseif strcmp(marker,'x')
            psCross(fid, x(i), y(i), r(i)); % cross
        elseif strcmp(marker,'s')
            psSquare(fid, x(i), y(i), r(i)); % empty square
        elseif strcmp(marker,'fs')
            psFillSquare(fid, x(i), y(i), r(i)); %filled square
        else
            psCircle(fid, x(i), y(i), r(i)); % empty cicle
        end

    end
%     psColor(fid,[0,0,0]);
end