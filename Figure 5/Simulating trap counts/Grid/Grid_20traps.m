clear;
%Initial population
N = 10000;
%Radius of traps (varied, either r0 = 1 or r0 = 2)
r0 = 1; 
%Mobility parameter
s = 1; 
%Radius of simulation area (varied, either R = 100 or R = 200)
R = 100;  
%Traps placed in a p = 4 by q = 6 grid spatial arrangement
p = 4; q = 5;
%Optimal trap separation distance
d = 1.6*(R-r0)./sqrt((p - 1).^2 + (q - 1).^2);

%Trap location
x1 = d./2; y1 = 0; 
x2 = -d./2; y2 = 0; 
x3 = -d./2; y3 = -d; 
x4 = d./2; y4 = -d; 

x5 = 3.*d./2; y5 = 0;
x6 = -3.*d./2; y6 = 0;
x7 = -3.*d./2; y7 = -d; 
x8 = 3.*d./2; y8 = -d; 


x9 = 3.*d./2; y9 = d; 
x10 = d./2; y10 = d; 
x11 = -d./2; y11 = d; 
x12 = -3.*d./2; y12 = d; 

x13 = 3.*d./2; y13 = -2.*d; 
x14 = d./2; y14 = -2.*d;
x15 = -d./2; y15 = -2.*d; 
x16 = -3.*d./2; y16 = -2.*d; 

x17 = 3.*d./2; y17 = 2.*d; 
x18 = d./2; y18 = 2.*d; 
x19 = -d./2; y19 = 2.*d; 
x20 = -3.*d./2; y20 = 2.*d; 

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
r13(k,1) = sqrt((X(k,1) - x13).^2 + (Y(k,1) - y13).^2); 
r14(k,1) = sqrt((X(k,1) - x14).^2 + (Y(k,1) - y14).^2); 
r15(k,1) = sqrt((X(k,1) - x15).^2 + (Y(k,1) - y15).^2); 
r16(k,1) = sqrt((X(k,1) - x16).^2 + (Y(k,1) - y16).^2); 
r17(k,1) = sqrt((X(k,1) - x17).^2 + (Y(k,1) - y17).^2); 
r18(k,1) = sqrt((X(k,1) - x18).^2 + (Y(k,1) - y18).^2); 
r19(k,1) = sqrt((X(k,1) - x19).^2 + (Y(k,1) - y19).^2); 
r20(k,1) = sqrt((X(k,1) - x20).^2 + (Y(k,1) - y20).^2); 
end

Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0;
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
r13(k,a) = sqrt((X(k,a) - x13).^2 + (Y(k,a) - y13).^2); 
r14(k,a) = sqrt((X(k,a) - x14).^2 + (Y(k,a) - y14).^2); 
r15(k,a) = sqrt((X(k,a) - x15).^2 + (Y(k,a) - y15).^2); 
r16(k,a) = sqrt((X(k,a) - x16).^2 + (Y(k,a) - y16).^2); 
r17(k,a) = sqrt((X(k,a) - x17).^2 + (Y(k,a) - y17).^2); 
r18(k,a) = sqrt((X(k,a) - x18).^2 + (Y(k,a) - y18).^2); 
r19(k,a) = sqrt((X(k,a) - x19).^2 + (Y(k,a) - y19).^2); 
r20(k,a) = sqrt((X(k,a) - x20).^2 + (Y(k,a) - y20).^2); 

if    r1(k,a) < r0 | r2(k,a) < r0 |r3(k,a) < r0 | r4(k,a) < r0 | r5(k,a) < r0| r6(k,a) < r0 | r7(k,a) < r0 | r8(k,a) < r0 |r9(k,a) < r0| r10(k,a) < r0 | r11(k,a) < r0 | r12(k,a) < r0|r13(k,a) < r0| r14(k,a) < r0 | r15(k,a) < r0 | r16(k,a) < r0|r17(k,a) < r0| r18(k,a) < r0 | r19(k,a) < r0 | r20(k,a) < r0;
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
    
    xunit13 = r0 .* cos(th) + x13;   
    yunit13 = r0 .* sin(th) + y13;
    xunit14 = r0 .* cos(th) + x14;   
    yunit14 = r0 .* sin(th) + y14;
    xunit15 = r0 .* cos(th) + x15;   
    yunit15 = r0 .* sin(th) + y15;
    xunit16 = r0 .* cos(th) + x16;   
    yunit16 = r0 .* sin(th) + y16;
    
    xunit17 = r0 .* cos(th) + x17;   
    yunit17 = r0 .* sin(th) + y17;
    xunit18 = r0 .* cos(th) + x18;   
    yunit18 = r0 .* sin(th) + y18;
    xunit19 = r0 .* cos(th) + x19;   
    yunit19 = r0 .* sin(th) + y19;
    xunit20 = r0 .* cos(th) + x20;   
    yunit20 = r0 .* sin(th) + y20;

dd = R; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);

subplot(2,2,1)
hold on;
plot(X1',Y1','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5); 
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5); 
plot(xunit13, yunit13,'r',xunit14, yunit14,'r',xunit15, yunit15,'r',xunit16, yunit16,'r','linewidth',1.5); 
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5); 
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
plot(xunit13, yunit13,'r',xunit14, yunit14,'r',xunit15, yunit15,'r',xunit16, yunit16,'r','linewidth',1.5);
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5);
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
plot(xunit13, yunit13,'r',xunit14, yunit14,'r',xunit15, yunit15,'r',xunit16, yunit16,'r','linewidth',1.5);
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5);
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
