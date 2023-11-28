% Load models & data
arInit;
arLoadModel('Model3');
arLoadData('Model3Data');
arCompileAll;

% load paramter values that were used in the paper, assume that k1 to k4
% are unknown
% Alternatively can use the arFit argument to find optimal values arSetPars('ERROR_abs',-1,0,1,-5,3,0)
 arSetPars('ERROR_abs',-1,0,1,-5,3,0);
 arSetPars('k1',-1.2441,1,1,-5,3,0);
 arSetPars('k2',0.415,1,1,-5,3,0);
 arSetPars('k3',0.5315,1,1,-5,3,0);
 arSetPars('k4',-2.301,1,1,-5,3,0);
%Values are displayed as their log10 values 
%the 0 after the parameter estimate implies fixed whereas 1 implies fitted

%To initialise the profile likelihood estimation 
arPLEInit;
%This will prompt the user to name their results file which will be stored
%in the results folder 
%use ple('parameter') to generate the profile likelihood plot and assess
%the PIA e.g. ple('k1')
%in the newly saved results file can select ple and view the 95% CI
% To perform the analysis with some of the parameters known, simply set
% those parameters to fixed by either using the arTuner argument or using
% arSetPars