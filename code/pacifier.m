clear;  clc
data = xlsread('pacifier.xls');
y = [data(:,1)];
x1 = [data(:,3)];
x2 = [data(:,4)];
x3 = [data(:,5)];
x4 = [data(:,6)];
x5 = [data(:,7)];
x6 = [data(:,8)];
X = [ones(100,1) x1 x2 x3 x4 x5 x6];
[b,bint,r,rint,stats]=regress(y,X);
rcoplot(r, rint);
disp(b')