clc; clear;
% Program to plot Cumulative distribution function of 
% probability distribution object
x = 0:.1:300000; %time in hours
pd = makedist('Normal','mu',43800,'sigma',4380); %PDF for manufacturer-B
%norm = normpdf(x,43800,4380);
cdf_normal = cdf(pd,x); % CDF for manufacturer-B
cdf_exp = 1-exp((-2.28*10^(-5))*x); %CDF for manufacturer-A

t = 0:.1:30; %time in years
pd = makedist('Normal','mu',5,'sigma',0.5); %PDF for manufacturer-B
cdf_normal1 = cdf(pd,t); % CDF for manufacturer-B
cdf_exp1 = 1-exp((-0.2)*t); %CDF for manufacturer-A

figure(1)
title('Unreliability')
hold on
plot(x,cdf_exp,'b','LineWidth',2)
hold on
plot(x,cdf_normal,'r','LineWidth',2)
hold on
legend('F(t) of Manufacturer-A','F(t) of Manufacturer-B');
xlabel('Time in hours')
ylabel('Unreliability Function')
grid on
axis([0 300000 -0.1 1.1])

figure(2)
title('Unreliability')
hold on
plot(t,cdf_exp1,'b','LineWidth',2)
hold on
plot(t,cdf_normal1,'r','LineWidth',2)
hold on
legend('F(t) of Manufacturer-A','F(t) of Manufacturer-B');
xlabel('Time in years')
ylabel('Unreliability Function')
grid on
axis([0 30 -0.1 1.1])

