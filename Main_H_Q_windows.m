close all
clear all
Interval=45;
arg=[0:Interval:360-Interval];
r=100;

%% The rotation process of Half window
[H_W]=Half_window(arg,r);
[~,~,Dim]=size(H_W);
figure
for ii=1:Dim
    imshow(H_W(:,:,ii),[])
    pause(1)
end


%% The rotation process of Quarter window
[Q_W]=Quarter_window(arg,r);
[~,~,Dim]=size(Q_W);
figure
for ii=1:Dim
    imshow(Q_W(:,:,ii),[])
    pause(1)
end