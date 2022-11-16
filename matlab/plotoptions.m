% Set grids on all axis.
set(0,'defaultAxesXGrid','on');
set(0,'defaultAxesYGrid','on');
set(0,'defaultAxesZGrid','on');

size = 30;

set(0,'defaultAxesXGrid','on');set(0,'defaultAxesYGrid','on');set(0,'defaultAxesZGrid','on');
% set some other default values
set(0, 'RecursionLimit', 50);set(0, 'DefaultFigurePaperType', 'A0');
set(0, 'Defaultlinelinewidth',5);
set(0,'defaultaxeslinewidth',1)
set(0, 'defaultpatchlinewidth',1);set(0, 'DefaultFigureWindowStyle', 'normal');
set(0, 'DefaultAxesBox', 'on');set(0, 'DefaultTextFontSize', size);
set(0, 'DefaultAxesFontSize', size);set(0, 'DefaultUicontrolFontSize', size);
set(0, 'Defaulttextinterpreter','latex')
label_size=50
%     area(-feet_pen_RFX(idxA),ones(size(time(idxA))),-0.5 ,'facecolor',0.0*ones(1,3),'edgecolor','none','FaceAlpha',0.2,'HandleVisibility','off'); hold on
%%
% Blue color:    ,'Color',[0, 0.4470, 0.7410]);
% Red color:     ,'Color',[0.8500, 0.3250, 0.0980]);
%%
% SIM
%export_fig('../../figures/softTerrainSimComparisonGRF.pdf','-pdf','-transparent');%MAE!!!
%export_fig('../../figures/softTerrainSimComparisonpen.pdf','-pdf','-transparent');
%export_fig('../../figures/softTerrainSimComparison.pdf','-pdf','-transparent');
%export_fig('../../figures/aggresiveTrunkTraj.pdf','-pdf','-transparent');
%export_fig('../../figures/speedTest.pdf','-pdf','-transparent');
%export_fig('../../figures/powerConsumption.pdf','-pdf','-transparent');
% MIX IS SVG
%export_fig('../../figures/mix2.pdf','-pdf','-transparent');
% EXP
%export_fig('../../figures/softTerraineXPComparison.pdf','-dpdf','-transparent'); % MAE!!!!
%export_fig('../../figures/LongTransExp.pdf','-pdf','-transparent'); % MAE!!!!
%export_fig('../../figures/DistExp.pdf','-pdf','-transparent');
%export_fig('../../figures/ste.pdf','-pdf','-transparent');%STE