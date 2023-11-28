% Load models & data
arInit;
arLoadModel('Model2');
arLoadData('Model2Data');
arCompileAll;

% load paramter values that were used in the paper, assume that k1 to k5
% are unknown
% Alternatively can use the arFit argument to find optimal values arSetPars('ERROR_abs',-1,0,1,-5,3,0)
 arSetPars('ERROR_abs',-1.080930331,0,1,-5,3,0);
 arSetPars('ERROR_abs1',0.44125713,0,1,-5,3,0);
 arSetPars('ERROR_abs2',-0.544771067,0,1,-5,3,0);
 arSetPars('k1',-4.5,1,1,-5,3,0);
 arSetPars('k2',-1.6953546,1,1,-5,3,0);
 arSetPars('k3',-1.1071029,1,1,-5,3,0);
 arSetPars('k4',-0.6554581,1,1,-5,3,0);
 arSetPars('k5',1.03958021,1,1,-5,3,0);
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

 