clear;  clc
data = xlsread('microwave.xlsx');
y = [data(:,2)];
x1 = [data(:,3)];
x2 = [data(:,4)];
x3 = [data(:,5)];
x4 = [data(:,6)];
X = [ones(99,1) x1 x2 x3 x4];
[b,bint,r,rint,stats]=regress(y,X);
rcoplot(r, rint);
disp(b')