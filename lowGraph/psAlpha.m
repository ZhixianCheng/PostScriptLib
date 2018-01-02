function psAlpha(fid,t)
% psAlpha(fid,t) sets the transparency of the figure
    fprintf(fid,'[ /ca %.3f  /SetTransparency pdfmark\n',t); 
end