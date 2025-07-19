H=0.0127;
coarseke=xlsread("finerstm.csv");
x=(coarseke(:,2)/H)-15;
y=(coarseke(:,3)/H);
u=coarseke(:,4)/44.2;
v=coarseke(:,5)/44.2;
uu=(coarseke(:,7)*1000)/(44.2*44.2);
vv=(coarseke(:,8)*1000)/(44.2*44.2);
uv=(coarseke(:,9)*1000)/(44.2*44.2);
k=coarseke(:,6)/(44.2*44.2);
ep=(coarseke(:,10)*H)/(44.2*44.2*44.2);
% N=size(x,1);

figure(1);
[X, Y]=meshgrid(linspace(0,12,500),linspace(0,2,500));
F=scatteredInterpolant(x,y,ep);
Z=F(X, Y);
contourf(X,Y,Z,400,'edgecolor','none')
colormap('jet')
shading interp
colorbar()
ylim([0,2]);xlim([0,12]);
t1=sgtitle('$(H/U_{ref}^3)*\epsilon:$ RSTM Turbulence Model using Fine mesh');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$x/H$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
set(gca,'ytick',0:0.5:2)
set(gca,'xtick',0:2:12)
set(gcf,'position',[10,10,1050,300])
 
