clear;  clc
data = xlsread('hair_dryer.xlsx');
y = [data(:,8)];
x1 = [data(:,1)];
x2 = [data(:,2)];
x3 = [data(:,3)];
x4 = [data(:,4)];
x5 = [data(:,5)];
x6 = [data(:,6)];
x7 = [data(:,7)];
X = [ones(99,1) x1 x2 x3 x4 x5 x6 x7];
[b,bint,r,rint,stats]=regress(y,X);
rcoplot(r, rint);
disp(b')