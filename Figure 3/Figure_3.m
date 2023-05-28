clear;
%Initial population
N = 500;
%Radius of traps
r0 = 0.5; 
%Mobility parameter
s = 1; 
%Radius of simulation area
R = 30;                                                                    
%Total number of traps
M = 24;

for i = 1:M;
stepM(i) = sqrt(rand) .*(R-r0);                                                
thetaM(i) = 2 .* pi .* rand;                                               
xcentre(i) =  stepM(i) .* cos(thetaM(i));                                    
ycentre(i) =  stepM(i) .* sin(thetaM(i));  
end

%Plot of traps
    th = 0:0.001:2.*pi;
    xunit1 = r0 .* cos(th) + xcentre(1);   
    yunit1 = r0 .* sin(th) + ycentre(1); 
    xunit2 = r0 .* cos(th) + xcentre(2);   
    yunit2 = r0 .* sin(th) + ycentre(2);
    xunit3 = r0 .* cos(th) + xcentre(3);   
    yunit3 = r0 .* sin(th) + ycentre(3);
    xunit4 = r0 .* cos(th) + xcentre(4);   
    yunit4 = r0 .* sin(th) + ycentre(4);
    
    xunit5 = r0 .* cos(th) + xcentre(5);   
    yunit5 = r0 .* sin(th) + ycentre(5);
    xunit6 = r0 .* cos(th) + xcentre(6);   
    yunit6 = r0 .* sin(th) + ycentre(6);
    xunit7 = r0 .* cos(th) + xcentre(7);   
    yunit7 = r0 .* sin(th) + ycentre(7);
    xunit8 = r0 .* cos(th) + xcentre(8);   
    yunit8 = r0 .* sin(th) + ycentre(8);
    
    xunit9 = r0 .* cos(th) + xcentre(9);   
    yunit9 = r0 .* sin(th) + ycentre(9);
    xunit10 = r0 .* cos(th) + xcentre(10);   
    yunit10 = r0 .* sin(th) + ycentre(10);
    xunit11 = r0 .* cos(th) + xcentre(11);   
    yunit11 = r0 .* sin(th) + ycentre(11);
    xunit12 = r0 .* cos(th) + xcentre(12);   
    yunit12 = r0 .* sin(th) + ycentre(12);
    
    xunit13 = r0 .* cos(th) + xcentre(13);   
    yunit13 = r0 .* sin(th) + ycentre(13);
    xunit14 = r0 .* cos(th) + xcentre(14);   
    yunit14 = r0 .* sin(th) + ycentre(14);
    xunit15 = r0 .* cos(th) + xcentre(15);   
    yunit15 = r0 .* sin(th) + ycentre(15);
    xunit16 = r0 .* cos(th) + xcentre(16);   
    yunit16 = r0 .* sin(th) + ycentre(16);
    
    xunit17 = r0 .* cos(th) + xcentre(17);   
    yunit17 = r0 .* sin(th) + ycentre(17);
    xunit18 = r0 .* cos(th) + xcentre(18);   
    yunit18 = r0 .* sin(th) + ycentre(18);
    xunit19 = r0 .* cos(th) + xcentre(19);   
    yunit19 = r0 .* sin(th) + ycentre(19);
    xunit20 = r0 .* cos(th) + xcentre(20);   
    yunit20 = r0 .* sin(th) + ycentre(20);
    
    xunit21 = r0 .* cos(th) + xcentre(21);   
    yunit21 = r0 .* sin(th) + ycentre(21);
    xunit22 = r0 .* cos(th) + xcentre(22);   
    yunit22 = r0 .* sin(th) + ycentre(22);
    xunit23 = r0 .* cos(th) + xcentre(23);   
    yunit23 = r0 .* sin(th) + ycentre(23);
    xunit24 = r0 .* cos(th) + xcentre(24);   
    yunit24 = r0 .* sin(th) + ycentre(24);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dd = R; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);
subplot(2,2,1)
hold on;

plot(xunit1, yunit1,'k',xunit2, yunit2,'k',xunit3, yunit3,'k',xunit4, yunit4,'k','linewidth',2.5); 
plot(xunit5, yunit5,'k',xunit6, yunit6,'k',xunit7, yunit7,'k',xunit8, yunit8,'k','linewidth',2.5); 
plot(xunit9, yunit9,'k',xunit10, yunit10,'k',xunit11, yunit11,'k',xunit12, yunit12,'k','linewidth',2.5); 
plot(xunit13, yunit13,'k',xunit14, yunit14,'k',xunit15, yunit15,'k',xunit16, yunit16,'k','linewidth',2.5); 
plot(xunit17, yunit17,'k',xunit18, yunit18,'k',xunit19, yunit19,'k',xunit20, yunit20,'k','linewidth',2.5); 
plot(xunit21, yunit21,'k',xunit22, yunit22,'k',xunit23, yunit23,'k',xunit24, yunit24,'k','linewidth',2.5); 
plot(xbound,ybound,'k-.','linewidth',2.5)
plot(xbound,ybound,'k-.','linewidth',1.5)
set(gca,'fontsize',16); 
title('(a) Randomised','FontSize',24,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);
axis off;

%%%%%%%%%%%%%%% GRID

d = 0.8*2*(R-r0)./sqrt(3^2 + 5^2); %maximum distance between traps


%Trap location
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
r21(k,1) = sqrt((X(k,1) - x21).^2 + (Y(k,1) - y21).^2); 
r22(k,1) = sqrt((X(k,1) - x22).^2 + (Y(k,1) - y22).^2); 
r23(k,1) = sqrt((X(k,1) - x23).^2 + (Y(k,1) - y23).^2); 
r24(k,1) = sqrt((X(k,1) - x24).^2 + (Y(k,1) - y24).^2);
end

Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0|r21(k,1) < r0 | r22(k,1) < r0 | r23(k,1) < r0 | r24(k,1) < r0;
        Ncount = Ncount + 1;
X(k,1) = 10^100; Y(k,1) = 10^100; 
end
end

Npop = N - Ncount; 

p1 = 1; 

for k = 1:N;
    X1(k) = X(k,p1);
    Y1(k) = Y(k,p1);
end

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

dd = R; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);
subplot(2,2,2)
hold on;
plot(xunit1, yunit1,'k',xunit2, yunit2,'k',xunit3, yunit3,'k',xunit4, yunit4,'k','linewidth',2.5); 
plot(xunit5, yunit5,'k',xunit6, yunit6,'k',xunit7, yunit7,'k',xunit8, yunit8,'k','linewidth',2.5); 
plot(xunit9, yunit9,'k',xunit10, yunit10,'k',xunit11, yunit11,'k',xunit12, yunit12,'k','linewidth',2.5); 
plot(xunit13, yunit13,'k',xunit14, yunit14,'k',xunit15, yunit15,'k',xunit16, yunit16,'k','linewidth',2.5); 
plot(xunit17, yunit17,'k',xunit18, yunit18,'k',xunit19, yunit19,'k',xunit20, yunit20,'k','linewidth',2.5); 
plot(xunit21, yunit21,'k',xunit22, yunit22,'k',xunit23, yunit23,'k',xunit24, yunit24,'k','linewidth',2.5); 
plot(xbound,ybound,'k-.','linewidth',2.5)
set(gca,'fontsize',16); 
title('(b) Grid','FontSize',24,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);
axis off;

clear;
N = 500;
r0 = 0.5; 
s = 1; 
R = 30;                                                                    



%%%%%%%%% TRANSECT

Nr = 24; %no. of traps

d = 0.8*2.*(R-1)./(Nr - 1); %maximum distance between traps

%Trap location
x1 = d.*(1./2); y1 = 0; 
x2 = -d.*(1./2); y2 = 0;
x3 = d.*(3./2); y3 = 0; 
x4 = -d.*(3./2); y4 = 0;

x5 = d.*(5./2); y5 = 0; 
x6 = -d.*(5./2); y6 = 0;
x7 = d.*(7./2); y7 = 0; 
x8 = -d.*(7./2); y8 = 0;

x9 = d.*(9./2); y9 = 0; 
x10 = -d.*(9./2); y10 = 0;
x11 = d.*(11./2); y11 = 0; 
x12 = -d.*(11./2); y12 = 0;

x13 = d.*(13./2); y13 = 0; 
x14 = -d.*(13./2); y14 = 0;
x15 = d.*(15./2); y15 = 0; 
x16 = -d.*(15./2); y16 = 0;

x17 = d.*(17./2); y17 = 0; 
x18 = -d.*(17./2); y18 = 0;
x19 = d.*(19./2); y19 = 0; 
x20 = -d.*(19./2); y20 = 0;

x21 = d.*(21./2); y21 = 0; 
x22 = -d.*(21./2); y22 = 0;
x23 = d.*(23./2); y23 = 0; 
x24 = -d.*(23./2); y24 = 0;

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
r21(k,1) = sqrt((X(k,1) - x21).^2 + (Y(k,1) - y21).^2); 
r22(k,1) = sqrt((X(k,1) - x22).^2 + (Y(k,1) - y22).^2); 
r23(k,1) = sqrt((X(k,1) - x23).^2 + (Y(k,1) - y23).^2); 
r24(k,1) = sqrt((X(k,1) - x24).^2 + (Y(k,1) - y24).^2);
end



Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0|r21(k,1) < r0 | r22(k,1) < r0 | r23(k,1) < r0 | r24(k,1) < r0;
        Ncount = Ncount + 1;
X(k,1) = 10^100; Y(k,1) = 10^100; 
end
end

Npop = N - Ncount; 

p1 = 1; 

for k = 1:N;
    X1(k) = X(k,p1);
    Y1(k) = Y(k,p1);
end

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

dd = R; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);
subplot(2,2,3)
hold on;
plot(xunit1, yunit1,'k',xunit2, yunit2,'k',xunit3, yunit3,'k',xunit4, yunit4,'k','linewidth',2.5); 
plot(xunit5, yunit5,'k',xunit6, yunit6,'k',xunit7, yunit7,'k',xunit8, yunit8,'k','linewidth',2.5); 
plot(xunit9, yunit9,'k',xunit10, yunit10,'k',xunit11, yunit11,'k',xunit12, yunit12,'k','linewidth',2.5); 
plot(xunit13, yunit13,'k',xunit14, yunit14,'k',xunit15, yunit15,'k',xunit16, yunit16,'k','linewidth',2.5); 
plot(xunit17, yunit17,'k',xunit18, yunit18,'k',xunit19, yunit19,'k',xunit20, yunit20,'k','linewidth',2.5); 
plot(xunit21, yunit21,'k',xunit22, yunit22,'k',xunit23, yunit23,'k',xunit24, yunit24,'k','linewidth',2.5); 
plot(xbound,ybound,'k-.','linewidth',2.5)
set(gca,'fontsize',16); %axis numbering font size
title('(c) Transect','FontSize',24,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);
axis off;


%%%%%%%%% NESTED CROSS

b = 4; 

wmin = (2*r0)./b + 1;
wmax = ((R-r0)./b).^(1/5);

w = 0.9*((R-r0)./b).^(1/5); %maximum multiplier of distances between traps


%Trap location
x1 = b; y1 = 0; 
x2 = 0; y2 = b; 
x3 = -b; y3 = 0; 
x4 = 0; y4 = -b; 

x5 = b.*w; y5 = 0; 
x6 = 0; y6 = b.*w; 
x7 = -b.*w; y7 = 0; 
x8 = 0; y8 = -b.*w; 

x9 = b.*(w.^2); y9 = 0; 
x10 = 0; y10 = b.*(w.^2); 
x11 = -b.*(w.^2); y11 = 0; 
x12 = 0; y12 = -b.*(w.^2); 

x13 = b.*(w.^3); y13 = 0; 
x14 = 0; y14 = b.*(w.^3); 
x15 = -b.*(w.^3); y15 = 0; 
x16 = 0; y16 = -b.*(w.^3); 

x17 = b.*(w.^4); y17 = 0; 
x18 = 0; y18 = b.*(w.^4); 
x19 = -b.*(w.^4); y19 = 0; 
x20 = 0; y20 = -b.*(w.^4); 

x21 = b.*(w.^5); y21 = 0; 
x22 = 0; y22 = b.*(w.^5); 
x23 = -b.*(w.^5); y23 = 0; 
x24 = 0; y24 = -b.*(w.^5); 

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
r21(k,1) = sqrt((X(k,1) - x21).^2 + (Y(k,1) - y21).^2); 
r22(k,1) = sqrt((X(k,1) - x22).^2 + (Y(k,1) - y22).^2); 
r23(k,1) = sqrt((X(k,1) - x23).^2 + (Y(k,1) - y23).^2); 
r24(k,1) = sqrt((X(k,1) - x24).^2 + (Y(k,1) - y24).^2);
end

Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0|r21(k,1) < r0 | r22(k,1) < r0 | r23(k,1) < r0 | r24(k,1) < r0;
        Ncount = Ncount + 1;
X(k,1) = 10^100; Y(k,1) = 10^100; 
end
end

Npop = N - Ncount; 

p1 = 1; 

for k = 1:N;
    X1(k) = X(k,p1);
    Y1(k) = Y(k,p1);
end

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


dd = R; %axis scaling
xbound = R .* cos(th); 
ybound = R .* sin(th);
subplot(2,2,4)
hold on;

plot(xunit1, yunit1,'k',xunit2, yunit2,'k',xunit3, yunit3,'k',xunit4, yunit4,'k','linewidth',2.5); 
plot(xunit5, yunit5,'k',xunit6, yunit6,'k',xunit7, yunit7,'k',xunit8, yunit8,'k','linewidth',2.5); 
plot(xunit9, yunit9,'k',xunit10, yunit10,'k',xunit11, yunit11,'k',xunit12, yunit12,'k','linewidth',2.5); 
plot(xunit13, yunit13,'k',xunit14, yunit14,'k',xunit15, yunit15,'k',xunit16, yunit16,'k','linewidth',2.5); 
plot(xunit17, yunit17,'k',xunit18, yunit18,'k',xunit19, yunit19,'k',xunit20, yunit20,'k','linewidth',2.5);
plot(xunit21, yunit21,'k',xunit22, yunit22,'k',xunit23, yunit23,'k',xunit24, yunit24,'k','linewidth',2.5); 
plot(xbound,ybound,'k-.','linewidth',2.5)
set(gca,'fontsize',16); 
title('(d) Nested cross','FontSize',24,'Interpreter','latex');
axis equal
xlabel('space, $x$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('space, $y$','Fontsize',20,'color','k','Interpreter','latex');
axis([-dd dd -dd dd]);
axis off;








