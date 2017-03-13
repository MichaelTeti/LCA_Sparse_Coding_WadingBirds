% Sparse Coding and Dictionary Learning of Wading Birds 
% in Florida Everglades using Locally-Competitive Algorithm
% Author: Michael A. Teti
% Florida Atlantic University Center for Complex Systems and Brain Sciences
% 6/10/16
%=======================================================================
%=======================================================================
clc;
close all;
clear all;



im=imread('Blue.jpg');
im=im2double(im);
im=imresize(im, [64 64]);
X=im2col(im, [8 8], 'sliding');

%Create Dictionary and alpha
k=300;
r=randperm(size(X, 2));
D=X(:, r(1:300));
alpha=randn(size(D, 2), size(X, 2));

for iters=1:300

    %Sparse Coding Using LCA
    t=.01;
    h=.0001;
    d=h/t;
    lambda=.01;
    u=zeros(size(alpha));

    alpha=(u-sign(u).*(lambda)).* (abs(u) > (lambda));
    u=u+d*(D'*(X-D*alpha)-u-alpha);


    %Dictionary Learning
    D=X*pinv(a);
    D=D./repmat(sqrt(sum(D.^2)),[size(D, 1), 1]);
end 

%display dictionary        
cd('/home/mpcr/Desktop/butterflies-master/Heron/spams-matlab');
start_spams;
displayPatches(D); colormap('gray');
pause;

save('HeronDic.mat', 'D');

