function ytickValue = ytickValueSpc(ymax)
%
%choose the denominator according to the value of ymax
nTick = 5;
 if ymax <= 49
    
    a = floor(ymax/(nTick-1));
    ytickValue = linspace(0,floor(ymax/a),nTick)*a;
 else
    ymax = ymax/10;
    a = floor(ymax/(nTick-1));
    ytickValue = linspace(0,floor(ymax/a),nTick)*a*10; 
 end
    
%     ytickValue = linspace(0,ymax - mod(ymax,(nTick-1)),nTick);
%      if a<10
%         ytickValue = linspace(0,ymax - mod(ymax,4),6); % this is done
%      elseif a>=10&&mod(ymax,10)<10
%          ytickValue = linspace(0,floor(ymax/a),6)*10
%      elseif a>=20&&mod(ymax,20)<20
%           ytickValue = linspace(0,floor(ymax/a),6)*20;
%      end
end