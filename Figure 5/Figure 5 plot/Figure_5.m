%(a) R = 100 (radius of simulation area), r = 1 (trap radius)
%Number of traps
traps = [4 8 12 16 20 24 28 32]; 
%Randomised arrangement
R = [8.48
16.48
22.98
29.4
35.65
41.59
45.96
50.14];

%Nested cross arrangement
N = [4.96
11.62
18.25
22.58
24.94
25.87
25.88
24.65];

%Transect arrangement
Tr = [7.4
15.39
19.75
23
24.93
26.09
26.83
27.74];

%Grid arrangement
G = [8.12
17.62
26.4
33.92
39.75
43.84
46.41
46.82]; 

subplot(2,2,1)
hold on;
h1 = plot(traps,G,'k-.o','linewidth',1.5,'MarkerFaceColor','k');
h2 = plot(traps,R,'b-.o','linewidth',1.5,'MarkerFaceColor','b');
h3 = plot(traps,Tr,'r-.o','linewidth',1.5,'MarkerFaceColor','r');
h4 = plot(traps,N,'g-.o','linewidth',1.5,'MarkerFaceColor','g');
set(gca,'fontsize',16); 
ylabel('Trap counts, $(\%)$','Fontsize',20,'color','k','Interpreter','latex');
title('(a) $R=100, r=1$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 36 0 70]);
XTick = [0:4:32];
set(gca,'xtick',XTick)

%(b) R = 100 (radius of simulation area), r = 2 (trap radius)
%Number of traps
traps = [4 8 12 16 20 24 28 32]; 
traps1 = [4 8 12 16 20]; 
traps2 = [4 8 12 16 20 24]; 

%Randomised arrangement 
R = [12.36
23.21
32.77
41.37
48.98
55.33
60.61
63.62];

%Nested cross arrangement
N = [6.11
15.94
23.95
28.95
31.3];

%Transect arrangement
Tr = [10.8
20.82
25.46
27.73
28.96
29.58
29.75
30.18];

%Grid arrangement
G = [11.59
24.95
37.08
46.36
52.2
54.82
55.11
53.91]; 

subplot(2,2,2)
hold on;
h1 =  plot(traps,G,'k-.o','linewidth',1.5,'MarkerFaceColor','k');
h2 = plot(traps,R,'b-.o','linewidth',1.5,'MarkerFaceColor','b');
h3 = plot(traps,Tr,'r-.o','linewidth',1.5,'MarkerFaceColor','r');
h4 = plot(traps1,N,'g-.o','linewidth',1.5,'MarkerFaceColor','g');
set(gca,'fontsize',16); 
title('(b) $R=100, r=2$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 36 0 70]);
XTick = [0:4:32];
set(gca,'xtick',XTick)

%(c) R = 200 (radius of simulation area), r = 1 (trap radius)
%Randomised arrangement
R = [2.46
4.74
6.92
9.16
10.67
12.89
14.88
17.04];

%Nested cross arrangement
N = [1.26
3.41
5.45
6.93
7.95
8.82
9.25
9.56];

%Transect arrangement
Tr = [1.86
4.27
6.54
8.21
9.51
10.61
11.54
12.25];

%Grid arrangement
G = [2.38
4.93
7.31
9.87
12.23
14.67
16.65
18.93]; 

subplot(2,2,3)
hold on;
h1 =  plot(traps,G,'k-.o','linewidth',1.5,'MarkerFaceColor','k');
h2 = plot(traps,R,'b-.o','linewidth',1.5,'MarkerFaceColor','b');
h3 = plot(traps,Tr,'r-.o','linewidth',1.5,'MarkerFaceColor','r');
h4 = plot(traps,N,'g-.o','linewidth',1.5,'MarkerFaceColor','g');
legend([h1 h2  h3 h4],'Grid','Randomised','Transect','Nested-cross','location','northeast')
set(legend,'FontSize',16,'FontWeight','bold','Interpreter','latex','location','northwest'); 
legend boxoff;
set(gca,'fontsize',16); 
xlabel('Number of traps ($J$)','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('Trap counts, $(\%)$','Fontsize',20,'color','k','Interpreter','latex');
title('(c) $R=200, r=1$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 36 0 30]);
XTick = [0:4:32];
set(gca,'xtick',XTick)

%(d) R = 200 (radius of simulation area), r = 2 (trap radius)
%Number of traps
traps = [4 8 12 16 20 24 28 32]; 

%Randomised arrangement
R = [3.48
6.84
9.79
12.81
15.1
17.97
20.53
23.29];

%Nested cross arrangement 
N = [1.48
4.58
7.27
9.03
10.55
11.35];

%Transect arrangement
Tr = [2.64
6.14
9.15
11.17
12.47
13.52
14.15
14.63];

%Grid arrangement
G = [3.44
7.1
10.78
14.31
17.81
21.08
23.7
26.23]; 

subplot(2,2,4)
hold on;
h1 =  plot(traps,G,'k-.o','linewidth',1.5,'MarkerFaceColor','k');
h2 = plot(traps,R,'b-.o','linewidth',1.5,'MarkerFaceColor','b');
h3 = plot(traps,Tr,'r-.o','linewidth',1.5,'MarkerFaceColor','r');
h4 = plot(traps2,N,'g-.o','linewidth',1.5,'MarkerFaceColor','g');
set(gca,'fontsize',16); 
xlabel('Number of traps ($J$)','Fontsize',20,'color','k','Interpreter','latex'); 
title('(d) $R=200, r=2$','Fontsize',20,'color','k','Interpreter','latex');
axis([0 36 0 30]);
XTick = [0:4:32];
set(gca,'xtick',XTick)




