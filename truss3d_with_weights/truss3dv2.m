function truss3dv2(inputfile,outputfile)
% function truss2d(inputfile,outputfile)
%
% Analysis of 2-D statically determinate truss
%
% Input:  inputfile  - name of input file
%         outputfile - name of output file
%
% Author: Kurt Maute for ASEN 2001, Sept 21 2011

% read input file
[joints,connectivity,reacjoints,reacvecs,loadjoints,loadvecs]=readinput3dv2(inputfile);

% compute forces in bars and reactions
[barforces,reacforces]=forceanalysis3dv2(joints,connectivity,reacjoints,reacvecs,loadjoints,loadvecs);

% write outputfile
writeoutput3dv2(outputfile,inputfile,barforces,reacforces,joints,connectivity,reacjoints,reacvecs,loadjoints,loadvecs);

% plot truss (used in Lab 2)
joints3D=zeros(size(joints,1),3);
joints3D(:,1:3)=joints;
plottruss3dv2(joints3D,connectivity,barforces,reacjoints,3*[0.025,0.04,0.05],[1 0 1 1])

end
