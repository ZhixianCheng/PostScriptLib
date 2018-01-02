clear
clc

for k = 1:5


h = figure('Visible','off');
n = randi(30);
peaks(n);

grid on;
xlabel( 'abc' );
ylabel( 'xyz' );
title( num2str(n));        
legend( 'Awesome' )

print('-dpsc2','-append','fileName'); % Easy to implement in a for-loop with sprintf for instance.

end