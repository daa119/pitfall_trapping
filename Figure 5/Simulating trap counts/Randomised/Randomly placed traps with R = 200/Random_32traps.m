clear;
%Initial population
N = 10000;
%Radius of traps (varied, either r0 = 1 or r0 = 2)
r0 = 1; 
%Mobility parameter
s = 1; 
%Radius of simulation area 
R = 200;  

%The location of trap centres are uniformly distributed over a circle of radius (R � r0), see Eqn (14) in the manuscript. 
x1 = -59.724;
x2 = 92.65;
x3 = 66.4299;
x4 = -143.3307;

x5 = -169.4222;
x6 = 8.4481;
x7 = 156.5529;
x8 = 164.5731;

x9 = 94.2839;
x10 = 126.3554;
x11 = 114.4609;
x12 = -16.4661;

x13 = 93.8796;
x14 = 13.5829;
x15 = 146.6245;
x16 = 25.287;

x17 = -55.117;
x18 = -71.3911;
x19 = -191.0007;
x20 = 103.0863;

x21 = -15.6209;
x22 = -141.9948;
x23 = 39.9063;
x24 = 17.993;

x25 = -57.7729;
x26 = 62.6507;
x27 = 89.5782;
x28 = -14.7534;

x29 = -70.8306;
x30 = 40.3104;
x31 = -137.6161;
x32 = -8.573;

y1 = 119.4966;
y2 = 130.5955;
y3 = -112.2958;
y4 = 31.09;

y5 = -0.0671;
y6 = 48.5387;
y7 = -55.9942;
y8 = 55.2206;

y9 = 47.433;
y10 = -127.3103;
y11 = 107.2559;
y12 = 176.5877;

y13 = 19.5511;
y14 = -82.2112;
y15 = 113.3998;
y16 = -177.7992;

y17 = 117.0486;
y18 = -69.4516;
y19 = 31.6832;
y20 = 140.3945;

y21 = 86.9992;
y22 = 90.6681;
y23 = 86.0566;
y24 = -69.9059;

y25 = 95.2612;
y26 = -98.306;
y27 = 145.6436;
y28 = -151.7608;

y29 = -148.3556;
y30 = -163.7221;
y31 = -102.1883;
y32 = -50.7569;

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
r25(k,1) = sqrt((X(k,1) - x25).^2 + (Y(k,1) - y25).^2);
r26(k,1) = sqrt((X(k,1) - x26).^2 + (Y(k,1) - y26).^2);
r27(k,1) = sqrt((X(k,1) - x27).^2 + (Y(k,1) - y27).^2);
r28(k,1) = sqrt((X(k,1) - x28).^2 + (Y(k,1) - y28).^2);
r29(k,1) = sqrt((X(k,1) - x29).^2 + (Y(k,1) - y29).^2);
r30(k,1) = sqrt((X(k,1) - x30).^2 + (Y(k,1) - y30).^2);
r31(k,1) = sqrt((X(k,1) - x31).^2 + (Y(k,1) - y31).^2);
r32(k,1) = sqrt((X(k,1) - x32).^2 + (Y(k,1) - y32).^2);
end

Ncount = 0;
for k = 1:N;
if r1(k,1) < r0 | r2(k,1) < r0 |r3(k,1) < r0 | r4(k,1) < r0 | r5(k,1) < r0| r6(k,1) < r0 | r7(k,1) < r0 | r8(k,1) < r0 | r9(k,1) < r0 | r10(k,1) < r0 | r11(k,1) < r0 | r12(k,1) < r0 |r13(k,1) < r0 | r14(k,1) < r0 | r15(k,1) < r0 | r16(k,1) < r0|r17(k,1) < r0 | r18(k,1) < r0 | r19(k,1) < r0 | r20(k,1) < r0|r21(k,1) < r0 | r22(k,1) < r0 | r23(k,1) < r0 | r24(k,1) < r0 | r25(k,1) < r0 | r26(k,1) < r0 | r27(k,1) < r0 | r28(k,1) < r0 | r29(k,1) < r0 | r30(k,1) < r0 | r31(k,1) < r0 | r32(k,1) < r0;
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
r21(k,a) = sqrt((X(k,a) - x21).^2 + (Y(k,a) - y21).^2); 
r22(k,a) = sqrt((X(k,a) - x22).^2 + (Y(k,a) - y22).^2); 
r23(k,a) = sqrt((X(k,a) - x23).^2 + (Y(k,a) - y23).^2); 
r24(k,a) = sqrt((X(k,a) - x24).^2 + (Y(k,a) - y24).^2); 
r25(k,a) = sqrt((X(k,a) - x25).^2 + (Y(k,a) - y25).^2); 
r26(k,a) = sqrt((X(k,a) - x26).^2 + (Y(k,a) - y26).^2); 
r27(k,a) = sqrt((X(k,a) - x27).^2 + (Y(k,a) - y27).^2); 
r28(k,a) = sqrt((X(k,a) - x28).^2 + (Y(k,a) - y28).^2); 
r29(k,a) = sqrt((X(k,a) - x29).^2 + (Y(k,a) - y29).^2); 
r30(k,a) = sqrt((X(k,a) - x30).^2 + (Y(k,a) - y30).^2); 
r31(k,a) = sqrt((X(k,a) - x31).^2 + (Y(k,a) - y31).^2); 
r32(k,a) = sqrt((X(k,a) - x32).^2 + (Y(k,a) - y32).^2); 

if    r1(k,a) < r0 | r2(k,a) < r0 |r3(k,a) < r0 | r4(k,a) < r0 | r5(k,a) < r0| r6(k,a) < r0 | r7(k,a) < r0 | r8(k,a) < r0 |r9(k,a) < r0| r10(k,a) < r0 | r11(k,a) < r0 | r12(k,a) < r0|r13(k,a) < r0| r14(k,a) < r0 | r15(k,a) < r0 | r16(k,a) < r0|r17(k,a) < r0| r18(k,a) < r0 | r19(k,a) < r0 | r20(k,a) < r0|r21(k,a) < r0| r22(k,a) < r0 | r23(k,a) < r0 | r24(k,a) < r0| r25(k,a) < r0| r26(k,a) < r0| r27(k,a) < r0| r28(k,a) < r0| r29(k,a) < r0| r30(k,a) < r0| r31(k,a) < r0| r32(k,a) < r0;
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
    
    xunit21 = r0 .* cos(th) + x21;   
    yunit21 = r0 .* sin(th) + y21;
    xunit22 = r0 .* cos(th) + x22;   
    yunit22 = r0 .* sin(th) + y22;
    xunit23 = r0 .* cos(th) + x23;   
    yunit23 = r0 .* sin(th) + y23;
    xunit24 = r0 .* cos(th) + x24;   
    yunit24 = r0 .* sin(th) + y24;
    
    xunit25 = r0 .* cos(th) + x25;   
    yunit25 = r0 .* sin(th) + y25;
    xunit26 = r0 .* cos(th) + x26;   
    yunit26 = r0 .* sin(th) + y26;
    xunit27 = r0 .* cos(th) + x27;   
    yunit27 = r0 .* sin(th) + y27;
    xunit28 = r0 .* cos(th) + x28;   
    yunit28 = r0 .* sin(th) + y28;
    
    xunit29 = r0 .* cos(th) + x29;   
    yunit29 = r0 .* sin(th) + y29;
    xunit30 = r0 .* cos(th) + x30;   
    yunit30 = r0 .* sin(th) + y30;
    xunit31 = r0 .* cos(th) + x31;   
    yunit31 = r0 .* sin(th) + y31;
    xunit32 = r0 .* cos(th) + x32;   
    yunit32 = r0 .* sin(th) + y32;

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
plot(xunit21, yunit21,'r',xunit22, yunit22,'r',xunit23, yunit23,'r',xunit24, yunit24,'r','linewidth',1.5); 
plot(xunit25, yunit25,'r',xunit26, yunit26,'r',xunit27, yunit27,'r',xunit28, yunit28,'r','linewidth',1.5); 
plot(xunit29, yunit29,'g',xunit30, yunit30,'g',xunit31, yunit31,'g',xunit32, yunit32,'g','linewidth',1.5); 
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
plot(xunit21, yunit21,'r',xunit22, yunit22,'r',xunit23, yunit23,'r',xunit24, yunit24,'r','linewidth',1.5); 
plot(xunit25, yunit25,'r',xunit26, yunit26,'r',xunit27, yunit27,'r',xunit28, yunit28,'r','linewidth',1.5); 
plot(xunit29, yunit29,'g',xunit30, yunit30,'g',xunit31, yunit31,'g',xunit32, yunit32,'g','linewidth',1.5); 
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
plot(xunit21, yunit21,'r',xunit22, yunit22,'r',xunit23, yunit23,'r',xunit24, yunit24,'r','linewidth',1.5); 
plot(xunit25, yunit25,'r',xunit26, yunit26,'r',xunit27, yunit27,'r',xunit28, yunit28,'r','linewidth',1.5); 
plot(xunit29, yunit29,'g',xunit30, yunit30,'g',xunit31, yunit31,'g',xunit32, yunit32,'g','linewidth',1.5); 
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


