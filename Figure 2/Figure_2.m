clear;

%Initial population
N = 500;                                                                    
%Radius of traps
r0 = 1;
%Mobility parameter
s = 0.5;           
%Radius of simulation area
R = 30;                   
%Traps are placed according to a p = 4 by q = 6 grid spatial arrangement 
p = 4; q = 6;                                                               
%Minimum trap separation distance
dmin = 2.*r0;                    
%Maximum trap separation distance
dmax = 2.*(R-r0)./sqrt((p-1).^2 + (q - 1).^2);                              
%Inter-trap spacing considered is 80% of the maximum possible spacing
k = 0.8;
d = dmin + k.*(dmax - dmin);                                                

%Co-ordinates of trap locations (xi, yi) where  i = 1, 2, ..., 24 traps
x1 = d./2; y1 = d./2; 
x2 = -d./2; y2 = d./2; 
x3 = -d./2; y3 = -d./2; 
x4 = d./2; y4 = -d./2; 

x5 = 3.*d./2; y5 = d./2; 
x6 = -3.*d./2; y6 = d./2; 
x7 = -3.*d./2; y7 = -d./2; 
x8 = 3.*d./2; y8 = -d./2; 

x9 = 3.*d./2; y9 = 3.*d./2; 
x10 = d./2; y10 = 3.*d./2; 
x11 = -d./2; y11 = 3.*d./2; 
x12 = -3.*d./2; y12 = 3.*d./2; 

x13 = 3.*d./2; y13 = -3.*d./2; 
x14 = d./2; y14 = -3.*d./2; 
x15 = -d./2; y15 = -3.*d./2; 
x16 = -3.*d./2; y16 = -3.*d./2; 

x17 = 3.*d./2; y17 = 5.*d./2; 
x18 = d./2; y18 = 5.*d./2; 
x19 = -d./2; y19 = 5.*d./2; 
x20 = -3.*d./2; y20 = 5.*d./2; 

x21 = 3.*d./2; y21 = -5.*d./2; 
x22 = d./2; y22 = -5.*d./2; 
x23 = -3.*d./2; y23 = -5.*d./2; 
x24 = -d./2; y24 = -5.*d./2; 

%Initial location of individuals
for k = 1:N;
step0(k) = sqrt(rand) .*R;                               
theta0(k) = 2 .* pi .* rand;                                               
X(k,1) =  step0(k) .* cos(theta0(k));                                      
Y(k,1) =  step0(k) .* sin(theta0(k));            

%Distance of individuals in the initial population from the centre of each of the traps
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
r21(k,1) = sqrt((X(k,1) - x21).^2 + (Y(k,1) - y21).^2); 
r22(k,1) = sqrt((X(k,1) - x22).^2 + (Y(k,1) - y22).^2); 
r23(k,1) = sqrt((X(k,1) - x23).^2 + (Y(k,1) - y23).^2); 
r24(k,1) = sqrt((X(k,1) - x24).^2 + (Y(k,1) - y24).^2);
end

%Removing individuals from the intial population that occur within the traps
Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0|r21(k,1) < r0 | r22(k,1) < r0 | r23(k,1) < r0 | r24(k,1) < r0;
        Ncount = Ncount + 1;
X(k,1) = 10^100; Y(k,1) = 10^100; 
end
end

%Actual initial population size after removal
Npop = N - Ncount; 

%No. of steps in the RW is (p - 1)
p = 101; 

for a = 1:p  
Counts(a) = 0;  
end

%Step lengths (step) and turning angles (theta) for the RW 
for a = 1:p; 
for k = 1:N; 
stepx(k,a) = s.*randn;
stepy(k,a) = s.*randn;
step(k,a) = sqrt(stepx(k,a).^2 + stepy(k,a).^2);

theta(k,a) = -pi + 2.*pi.*rand;
end 
end

Ntrap = 0;
for a = 2:p;
for k = 1:N;
%Random walk
X(k,a) = X(k,a - 1) + step(k,a - 1).*cos(theta(k,a - 1));
Y(k,a) = Y(k,a - 1) + step(k,a - 1).*sin(theta(k,a - 1));    

%Distance of individuals in the population after each step from the centre of each of the traps
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
r21(k,a) = sqrt((X(k,a) - x21).^2 + (Y(k,a) - y21).^2); 
r22(k,a) = sqrt((X(k,a) - x22).^2 + (Y(k,a) - y22).^2); 
r23(k,a) = sqrt((X(k,a) - x23).^2 + (Y(k,a) - y23).^2); 
r24(k,a) = sqrt((X(k,a) - x24).^2 + (Y(k,a) - y24).^2); 

%Trapping individuals
if    r1(k,a) < r0 | r2(k,a) < r0 |r3(k,a) < r0 | r4(k,a) < r0 | r5(k,a) < r0| r6(k,a) < r0 | r7(k,a) < r0 | r8(k,a) < r0 |r9(k,a) < r0| r10(k,a) < r0 | r11(k,a) < r0 | r12(k,a) < r0|r13(k,a) < r0| r14(k,a) < r0 | r15(k,a) < r0 | r16(k,a) < r0|r17(k,a) < r0| r18(k,a) < r0 | r19(k,a) < r0 | r20(k,a) < r0|r21(k,a) < r0| r22(k,a) < r0 | r23(k,a) < r0 | r24(k,a) < r0;
      Ntrap = Ntrap + 1;
%Trap counts
      Counts(a) = Ntrap;                

      X(k,a) = 10^100; Y(k,a) = 10^100;
end
if Counts(a) == 0;
   Counts(a) = Counts(a - 1);
end
end
end

%Trap counts (expressed as a %)
for a = 1:p;
    Jpercent(a) = (Counts(a)./Npop).*100;
end


p1 = 1; 
p2 = 101; 

for k = 1:N;
    X1(k) = X(k,p1);
    Y1(k) = Y(k,p1);
    
    X2(k) = X(k,p2);
    Y2(k) = Y(k,p2);
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
    
    xunit21 = r0 .* cos(th) + x21;   
    yunit21 = r0 .* sin(th) + y21;
    xunit22 = r0 .* cos(th) + x22;   
    yunit22 = r0 .* sin(th) + y22;
    xunit23 = r0 .* cos(th) + x23;   
    yunit23 = r0 .* sin(th) + y23;
    xunit24 = r0 .* cos(th) + x24;   
    yunit24 = r0 .* sin(th) + y24;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dd = 40; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);
subplot(1,3,1)
hold on;
plot(X1',Y1','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); %4traps 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5); %another 4, total of 8, separate them for not having a long commmand
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5); %another 4, total 12
plot(xunit13, yunit13,'r',xunit14, yunit14,'r',xunit15, yunit15,'r',xunit16, yunit16,'r','linewidth',1.5); %another 4 total of 16
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5); %another 4 total of 20
plot(xunit21, yunit21,'r',xunit22, yunit22,'r',xunit23, yunit23,'r',xunit24, yunit24,'r','linewidth',1.5); %another 4 total of 24
plot(xbound,ybound,'k--','linewidth',1.5)
set(gca,'fontsize',16); %axis numbering font size
title('(a)','FontSize',20,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);

subplot(1,3,2)
hold on;
plot(X2',Y2','k.','linewidth',1.5);
plot(xunit1, yunit1,'r',xunit2, yunit2,'r',xunit3, yunit3,'r',xunit4, yunit4,'r','linewidth',1.5); 
plot(xunit5, yunit5,'r',xunit6, yunit6,'r',xunit7, yunit7,'r',xunit8, yunit8,'r','linewidth',1.5);
plot(xunit9, yunit9,'r',xunit10, yunit10,'r',xunit11, yunit11,'r',xunit12, yunit12,'r','linewidth',1.5); 
plot(xunit13, yunit13,'r',xunit14, yunit14,'r',xunit15, yunit15,'r',xunit16, yunit16,'r','linewidth',1.5);
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5);
plot(xunit17, yunit17,'r',xunit18, yunit18,'r',xunit19, yunit19,'r',xunit20, yunit20,'r','linewidth',1.5); %another 4 total of 20
plot(xunit21, yunit21,'r',xunit22, yunit22,'r',xunit23, yunit23,'r',xunit24, yunit24,'r','linewidth',1.5);
set(gca,'fontsize',16); %axis numbering font size
title('(b)','FontSize',20,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);

nn = 0:1:p2 - 1;
dt = 0.1;
time = nn.*dt;

for a = 1:p2;
    Jpercent2(a) = (Counts(a)./Npop).*100;
end

subplot(1,3,3)
hold on;
plot(time,Jpercent2,'k','linewidth',1.5);

set(gca,'fontsize',16); %axis numbering font size
title('(c)','FontSize',20,'Interpreter','latex');
axis square
xlabel('time, $t$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('Trap counts, $(\%)$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 time(end) 0 100]);
round(Jpercent(p2),2)


