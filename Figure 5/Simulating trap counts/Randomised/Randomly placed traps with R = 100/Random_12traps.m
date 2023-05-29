clear;
%Initial population
N = 10000;
%Radius of traps (varied, either r0 = 1 or r0 = 2)
r0 = 1; 
%Mobility parameter
s = 1; 
%Radius of simulation area 
R = 100;  

%The location of trap centres are uniformly distributed over a circle of radius (R – r0), see Eqn (14) in the manuscript. 
x1 = 91.6796;
x2 = -43.2695;
x3 = 34.6453;
x4 = 59.3616;

x5 = -35.1938;
x6 = 45.8385;
x7 = -93.3382;
x8 = 6.9816;

x9 = 65.6777;
x10 = 70.9588;
x11 = -78.4491;
x12 = -9.7522;

y1 = -11.2273;
y2 = -37.0956;
y3 = -27.5205;
y4 = 11.043;

y5 = 39.7449;
y6 = -62.9019;
y7 = -8.3139;
y8 = 70.7752;

y9 = -7.4759;
y10 = 53.6615;
y11 = 3.732;
y12 = -15.4357;

%Initial location
for k = 1:N;
step0(k) = sqrt(rand) .*R;                               
theta0(k) = 2 .* pi .* rand;                                               
X(k,1) =  step0(k) .* cos(theta0(k));                                      
Y(k,1) =  step0(k) .* sin(theta0(k));

r1(k,1) = sqrt((X(k,1) - x1).^2 + (Y(k,1) - y1).^2); 
r2(k,1) = sqrt((X(k,1) - x2).^2 + (Y(k,1) - y2).^2); 
r3(k,1) = sqrt((X(k,1) - x3).^2 + (Y(k,1) - y3).^2); 
r4(k,1) = sqrt((X(k,1) - x4).^2 + (Y(k,1) - y4).^2); 
r5(k,1) = sqrt((X(k,1) - x5).^2 + (Y(k,1) - y5).^2); 
r6(k,1) = sqrt((X(k,1) - x6).^2 + (Y(k,1) - y6).^2); 
r7(k,1) = sqrt((X(k,1) - x7).^2 + (Y(k,1) - y7).^2); 
r8(k,1) = sqrt((X(k,1) - x8).^2 + (Y(k,1) - y8).^2); 
r9(k,1) = sqrt((X(k,1) - x9).^2 + (Y(k,1) - y9).^2); 
r10(k,1) = sqrt((X(k,1) - x10).^2 + (Y(k,1) - y10).^2); 
r11(k,1) = sqrt((X(k,1) - x11).^2 + (Y(k,1) - y11).^2); 
r12(k,1) = sqrt((X(k,1) - x12).^2 + (Y(k,1) - y12).^2); 
end

Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0 | r6(k,1) < r0 | r7(k,1) < r0 || r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0;
        Ncount = Ncount + 1;
X(k,1) = 10^100; Y(k,1) = 10^100; 
end
end

Npop = N - Ncount; %Actual population size

%No. of steps in the RW (is p - 1)
p = 1001; 

for a = 1:p  
Jtrap(a) = 0;  
end

for a = 1:p;
for k = 1:N;
 stepx(k,a) = s.*randn;
 stepy(k,a) = s.*randn;
 step(k,a) = sqrt(stepx(k,a).^2 + stepy(k,a).^2);

 theta(k,a) = -pi + 2.*pi.*rand;
end 
end

%Random walk
Ntrap = 0;
for a = 2:p;
for k = 1:N;
X(k,a) = X(k,a - 1) + step(k,a - 1).*cos(theta(k,a - 1));
Y(k,a) = Y(k,a - 1) + step(k,a - 1).*sin(theta(k,a - 1));    

r1(k,a) = sqrt((X(k,a) - x1).^2 + (Y(k,a) - y1).^2); 
r2(k,a) = sqrt((X(k,a) - x2).^2 + (Y(k,a) - y2).^2); 
r3(k,a) = sqrt((X(k,a) - x3).^2 + (Y(k,a) - y3).^2);
r4(k,a) = sqrt((X(k,a) - x4).^2 + (Y(k,a) - y4).^2); 
r5(k,a) = sqrt((X(k,a) - x5).^2 + (Y(k,a) - y5).^2); 
r6(k,a) = sqrt((X(k,a) - x6).^2 + (Y(k,a) - y6).^2); 
r7(k,a) = sqrt((X(k,a) - x7).^2 + (Y(k,a) - y7).^2); 
r8(k,a) = sqrt((X(k,a) - x8).^2 + (Y(k,a) - y8).^2); 
r9(k,a) = sqrt((X(k,a) - x9).^2 + (Y(k,a) - y9).^2); 
r10(k,a) = sqrt((X(k,a) - x10).^2 + (Y(k,a) - y10).^2); 
r11(k,a) = sqrt((X(k,a) - x11).^2 + (Y(k,a) - y11).^2); 
r12(k,a) = sqrt((X(k,a) - x12).^2 + (Y(k,a) - y12).^2); 

if    r1(k,a) < r0 | r2(k,a) < r0 |r3(k,a) < r0 | r4(k,a) < r0 | r5(k,a) < r0| r6(k,a) < r0 | r7(k,a) < r0 | r8(k,a) < r0 | r9(k,a) < r0| r10(k,a) < r0 | r11(k,a) < r0 | r12(k,a) < r0;
      Ntrap = Ntrap + 1;
      Jtrap(a) = Ntrap;                

      X(k,a) = 10^100; Y(k,a) = 10^100;
end
if Jtrap(a) == 0;
   Jtrap(a) = Jtrap(a - 1);
end
end
end


for a = 1:p;
    Jpercent(a) = (Jtrap(a)./Npop).*100;
end

p1 = 1; 
p2 = 251; 
p3 = 1001; 

for k = 1:N;
    X1(k) = X(k,p1);
    Y1(k) = Y(k,p1);
    
    X2(k) = X(k,p2);
    Y2(k) = Y(k,p2);
    
    X3(k) = X(k,p3);
    Y3(k) = Y(k,p3);
end

%Plotting traps
    th = 0:0.001:2.*pi;
    xunit1 = r0 .* cos(th) + x1;   
    yunit1 = r0 .* sin(th) + y1; 
    xunit2 = r0 .* cos(th) + x2;   
    yunit2 = r0 .* sin(th) + y2;
    xunit3 = r0 .* cos(th) + x3;   
    yunit3 = r0 .* sin(th) + y3;
    xunit4 = r0 .* cos(th) + x4;   
    yunit4 = r0 .* sin(th) + y4;
    
    xunit5 = r0 .* cos(th) + x5;   
    yunit5 = r0 .* sin(th) + y5;
    xunit6 = r0 .* cos(th) + x6;   
    yunit6 = r0 .* sin(th) + y6;
    xunit7 = r0 .* cos(th) + x7;   
    yunit7 = r0 .* sin(th) + y7;
    xunit8 = r0 .* cos(th) + x8;   
    yunit8 = r0 .* sin(th) + y8;
    
    xunit9 = r0 .* cos(th) + x9;   
    yunit9 = r0 .* sin(th) + y9;
    xunit10 = r0 .* cos(th) + x10;   
    yunit10 = r0 .* sin(th) + y10;
    xunit11 = r0 .* cos(th) + x11;   
    yunit11 = r0 .* sin(th) + y11;
    xunit12 = r0 .* cos(th) + x12;   
    yunit12 = r0 .* sin(th) + y12;

dd = 120; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);

subplot(2,2,1)
hold on;
plot(X1',Y1','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5); 
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5); 
plot(xbound,ybound,'k','linewidth',1.5)
set(gca,'fontsize',16); 
title('(a) $n=0$','FontSize',20,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);

subplot(2,2,2)
hold on;
plot(X2',Y2','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5);
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5); 
set(gca,'fontsize',16); 
title('(b) $n=250$','FontSize',20,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);

subplot(2,2,3)
hold on;
plot(X3',Y3','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5);
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5);  
set(gca,'fontsize',16); 
title('(c) $n=1000$','FontSize',20,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);

n = 0:1:p - 1;
nn = p - 1;

subplot(2,2,4)
hold on;
plot(n,Jpercent,'k','linewidth',1.5);
set(gca,'fontsize',16); 
axis square
xlabel('no. of steps, $n$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('Trap counts, $(\%)$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 nn 0 100]);
round(Jpercent(p3),2)
