clear all
close all
I = diag([0.00578574, 0.01938108,0.02476124]);
inflateFactor = computeInflateFactor( I, 0.2);
plotEllispoidInertia(I,[0;0;0],  inflateFactor)

% save the plot
set(gcf, 'Paperunits' , 'centimeters')
set(gcf, 'PaperSize', [45 19]);
set(gcf, 'PaperPosition', [0 0 45 19]);
print(gcf, '-dpdf','../../figures/inertiaEllipsoid.pdf')
