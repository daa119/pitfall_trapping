%Trap radius
r = 1;
%Normalised separation distances
dnorm = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];

%Trap counts for the grid arrangement
TC1 = [6.26
11.28
16.45
22.08
27.75
33.85
38.24
42.04
44.12
44.78
43.91
]; %for R=100

TC2 = [3.91
8.04
12.51
17.75
22.08
26.44
29.38
31.62
32.91
32.86
31.31]; %for R=125 

TC3 = [2.76
6.28
10.19
14.15
17.97
20.68
23.02
24.21
24.88
24.31
22.75]; %for R=150 

TC4 = [2.05
5.05
8.43
12.02
14.51
16.89
17.94
18.63
18.74
18.29
17.38]; %for R=175 

TC5 = [1.49
4.31
7.37
10.11
12.33
13.48
14.11
14.68
14.63
14.41
13.35]; %for R=200


subplot(1,3,1)
hold on;
h1 = plot(dnorm,TC1,'k-.o','linewidth',1.5,'MarkerFaceColor','b','MarkerSize',8); %R = 100
h2 = plot(dnorm,TC2,'k-.d','linewidth',1.5,'MarkerFaceColor','r','MarkerSize',8); %R = 125
h3 = plot(dnorm,TC3,'k-.^','linewidth',1.5,'MarkerFaceColor','g','MarkerSize',8); %R = 150
h4 = plot(dnorm,TC4,'k-.s','linewidth',1.5,'MarkerFaceColor','y','MarkerSize',8); %R = 175
h5 = plot(dnorm,TC5,'k-.p','linewidth',1.5,'MarkerFaceColor','m','MarkerSize',8); %R = 200
xlabel('Normalised separation distance, $\delta$','Fontsize',18,'color','k','Interpreter','latex'); 
ylabel('Trap counts, $(\%)$','Fontsize',18,'color','k','Interpreter','latex');
title('(a) Grid','FontSize',16,'FontWeight','bold','Interpreter','latex')
set(gca,'fontsize',14);
axis([0 1 0 50]);
axis square;

%Trap counts for the transect arrangement
TC1 = [10.72
12.93
15.08
17.16
19.18
21
22.61
24.36
25.16
25.68
26.04
]; %for R=100 

TC2 = [6.79
8.69
10.76
12.61
14.23
15.6
17.07
18.41
19.24
20.02
19.98
]; %for R=125 

TC3 = [4.76
6.52
8.21
9.53
10.93
12.32
13.34
14.6
15.18
15.9
16.17
]; %for R=150 

TC4 = [3.48
4.98
6.44
7.66
8.82
10.05
11.15
11.86
12.45
12.81
12.92
]; %for R=175

TC5 = [2.68
3.92
5.1
6.36
7.22
8.29
9.01
9.87
10.39
10.65
10.72
]; %for R=200 


subplot(1,3,2)
hold on;
h1 = plot(dnorm,TC1,'k-.o','linewidth',1.5,'MarkerFaceColor','b','MarkerSize',8); %R = 100
h2 = plot(dnorm,TC2,'k-.d','linewidth',1.5,'MarkerFaceColor','r','MarkerSize',8); %R = 125
h3 = plot(dnorm,TC3,'k-.^','linewidth',1.5,'MarkerFaceColor','g','MarkerSize',8); %R = 150
h4 = plot(dnorm,TC4,'k-.s','linewidth',1.5,'MarkerFaceColor','y','MarkerSize',8); %R = 175
h5 = plot(dnorm,TC5,'k-.p','linewidth',1.5,'MarkerFaceColor','m','MarkerSize',8); %R = 200
xlabel('Normalised separation distance, $\delta$','Fontsize',18,'color','k','Interpreter','latex'); 
title('(b) Transect','FontSize',16,'FontWeight','bold','Interpreter','latex')
set(gca,'fontsize',14);
axis([0 1 0 50]);
axis square;


%Trap counts for the nested-cross arrangement
TC1 = [16.75
19.47
20.8
22.21
24.03
25.83
27.44
28.29
29.17
29.01
26.49
]; %for R=100 

TC2 = [11.1
12.52
13.78
15.19
16.56
17.73
18.92
19.85
20.5
20.23
19.5
]; %for R=125 

TC3 = [7.49
8.93
9.58
10.63
11.21
12.42
13.94
14.78
14.94
15.48
14.05
]; %for R=150 

TC4 = [5.57
6.48
7.47
8.36
9.36
10.04
10.72
11.4
11.54
11.73
10.95
]; %for R=175

TC5 = [4.23
5.29
5.69
6.56
7.16
7.87
8.56
8.98
9.58
9.75
8.07
]; %for R=200

subplot(1,3,3)
hold on;
h1 = plot(dnorm,TC1,'k-.o','linewidth',1.5,'MarkerFaceColor','b','MarkerSize',8); %R = 100
h2 = plot(dnorm,TC2,'k-.d','linewidth',1.5,'MarkerFaceColor','r','MarkerSize',8); %R = 125
h3 = plot(dnorm,TC3,'k-.^','linewidth',1.5,'MarkerFaceColor','g','MarkerSize',8); %R = 150
h4 = plot(dnorm,TC4,'k-.s','linewidth',1.5,'MarkerFaceColor','y','MarkerSize',8); %R = 175
h5 = plot(dnorm,TC5,'k-.p','linewidth',1.5,'MarkerFaceColor','m','MarkerSize',8); %R = 200

legend([h1 h2 h3 h4 h5],'$R$ = 100','$R$ = 125','$R$ = 150','$R$ = 175','$R$ = 200','location','northwest');
set(legend,'FontSize',16,'FontWeight','bold','Interpreter','latex','location','northwest'); 
legend boxoff;
xlabel('Normalised separation factor, $\omega$','Fontsize',18,'color','k','Interpreter','latex'); 
title('(c) Nested-cross','FontSize',16,'FontWeight','bold','Interpreter','latex')
set(gca,'fontsize',14);
axis([0 1 0 50]);
axis square;






