%Mobility parameter
s = 0.1; 
%Number of steps in the RW
n = 1000;
%Time increment between successive steps
dt = 0.06;
%Mean cosine of turning angle distribution
c = [0
0.1
0.2
0.3
0.4
0.5
0.6
0.7
0.8
0.9]; 

%Diffusion coefficient in the long term (see Eqn 10 in the manuscript)
DiffC = ((s.^2)./(4*dt))*(2 + pi*c./(1-c));


%Trap counts 
%Grid arrangement
G = [44.04
46.25
48.11
49.8
51.2
52.91
53.75
53.36
51.8
45.15]; 

%Randomised arrangement
R = [41.35
44.18
46.64
49.01
51.11
52.97
54.46
54.95
53.31
45.59];

%Transect arrangement
Tr = [26.15
27.74
29.48
31.62
33.57
35.87
38.02
40.54
41.5
39.61];

%Nested-cross arrangement
NCross = [25.42
27.56
29.63
31.11
32.87
34.53
36.38
37.75
37.64
35.92];

hold on;
h1 =  plot(DiffC,G,'k-.o','linewidth',1.5,'MarkerFaceColor','k');
h2 = plot(DiffC,R,'b-.o','linewidth',1.5,'MarkerFaceColor','b');
h3 = plot(DiffC,Tr,'r-.o','linewidth',1.5,'MarkerFaceColor','r');
h4 = plot(DiffC,NCross,'g-.o','linewidth',1.5,'MarkerFaceColor','g');

legend([h1 h2  h3 h4],'Grid','Randomised','Transect','Nested-cross','location','northeast')
set(legend,'FontSize',16,'FontWeight','bold','Interpreter','latex','location','northeast'); 
legend boxoff;
set(gca,'fontsize',16); 
xlabel('Diffusion coefficient, $D$ $(\mathrm{m}^2/\mathrm{hr})$','Fontsize',20,'color','k','Interpreter','latex'); 
ylabel('Trap counts, $(\%)$','Fontsize',20,'color','k','Interpreter','latex');
xlim([0 1.5]);
ylim([25 60]);
axis square



