function greySC = psGreySC()
%greySC = psGreySC() 
%returns a 1*9 cell filled with 9 greyscale color
%ranging from black to white
  greySC{1} = [0,0,0]; %black
  greySC{2} = [105,105,105]/255; %dim grey
  greySC{3} = [128,128,128]/255; %grey
  greySC{4} = [169,169,169]/255; %dark grey
  greySC{5} = [192,192,192]/255; %silver
  greySC{6} = [211,211,211]/255; %light grey
  greySC{7} = [220,220,220]/255; %gainsboro
  greySC{8} = [245,245,245]/255; %white smoke
  greySC{9} = [255,255,255]/255; %white

end