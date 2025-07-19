
fineke=xlsread('fineke.csv');
enhancedke=xlsread("enhancedwall.csv");
%% Fine ke
H=0.0127;
xc=(fineke(:,2)/H)-15;
yc=(fineke(:,3)/H);
uc=fineke(:,7)/44.2;
vc=fineke(:,8)/44.2;
kc=fineke(:,9)/(44.2*44.2);
ec=(fineke(:,10)*H)/(44.2*44.2*44.2);
uuc=(fineke(:,4)*1000)/(44.2*44.2);
vvc=(fineke(:,5)*1000)/(44.2*44.2);
uvc=(fineke(:,6)*1000)/(44.2*44.2);

%% enhancedke
H=0.0127;
xm=(enhancedke(:,2)/H)-15;
ym=(enhancedke(:,3)/H);
um=enhancedke(:,7)/44.2;
vm=enhancedke(:,8)/44.2;
km=enhancedke(:,9)/(44.2*44.2);
em=(enhancedke(:,10)*H)/(44.2*44.2*44.2);
uum=(enhancedke(:,4)*1000)/(44.2*44.2);
vvm=(enhancedke(:,5)*1000)/(44.2*44.2);
uvm=(enhancedke(:,6)*1000)/(44.2*44.2);

%% Plots for u


[idxc1,idxc4,idxc6,idxc10]=index(xc,yc);
[idxm1,idxm4,idxm6,idxm10]=index(xm,ym);

figure(1)
plot(uc(idxc1),yc(idxc1),'r',um(idxm1),ym(idxm1),'b',xh1(:,2),xh1(:,1),'k-d')
t1=sgtitle('$\bar{u}/U_{ref}$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{u}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(2)
plot(uc(idxc4),yc(idxc4),'r',um(idxm4),ym(idxm4),'b',xh4(:,2),xh4(:,1),'k-d')
t1=sgtitle('$\bar{u}/U_{ref}$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{u}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(3)
plot(uc(idxc6),yc(idxc6),'r',um(idxm6),ym(idxm6),'b',xh6(:,2),xh6(:,1),'k-d')
t1=sgtitle('$\bar{u}/U_{ref}$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{u}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(4)
plot(uc(idxc10),yc(idxc10),'r',um(idxm10),ym(idxm10),'b',xh10(:,2),xh10(:,1),'k-d')
t1=sgtitle('$\bar{u}/U_{ref}$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{u}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% Plots for v

figure(5)
plot(vc(idxc1),yc(idxc1),'r',vm(idxm1),ym(idxm1),'b',xh1(:,3),xh1(:,1),'k-d')
t1=sgtitle('$\bar{v}/U_{ref}$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{v}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(6)
plot(vc(idxc4),yc(idxc4),'r',vm(idxm4),ym(idxm4),'b',xh4(:,3),xh4(:,1),'k-d')
t1=sgtitle('$\bar{v}/U_{ref}$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{v}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(7)
plot(vc(idxc6),yc(idxc6),'r',vm(idxm6),ym(idxm6),'b',xh6(:,3),xh6(:,1),'k-d')
t1=sgtitle('$\bar{v}/U_{ref}$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{v}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(8)
plot(vc(idxc10),yc(idxc10),'r',vm(idxm10),ym(idxm10),'b',xh10(:,3),xh10(:,1),'k-d')
t1=sgtitle('$\bar{v}/U_{ref}$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$\bar{v}/U_{ref}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% PLots for uu

figure(9)
plot(uuc(idxc1),yc(idxc1),'r',uum(idxm1),ym(idxm1),'b',xh1(:,4),xh1(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(10)
plot(uuc(idxc4),yc(idxc4),'r',uum(idxm4),ym(idxm4),'b',xh4(:,4),xh4(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(11)
plot(uuc(idxc6),yc(idxc6),'r',uum(idxm6),ym(idxm6),'b',xh6(:,4),xh6(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(12)
plot(uuc(idxc10),yc(idxc10),'r',uum(idxm10),ym(idxm10),'b', xh10(:,4),xh10(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% Plots for vv

figure(13)
plot(vvc(idxc1),yc(idxc1),'r',vvm(idxm1),ym(idxm1),'b',xh1(:,5),xh1(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(14)
plot(vvc(idxc4),yc(idxc4),'r',vvm(idxm4),ym(idxm4),'b',xh4(:,5),xh4(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(15)
plot(vvc(idxc6),yc(idxc6),'r',vvm(idxm6),ym(idxm6),'b',xh6(:,5),xh6(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(16)
plot(vvc(idxc10),yc(idxc10),'r',vvm(idxm10),ym(idxm10),'b',xh10(:,5),xh10(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% PLots for uv

figure(17)
plot(uvc(idxc1),yc(idxc1),'r',uvm(idxm1),ym(idxm1),'b',xh1(:,6),xh1(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(18)
plot(uvc(idxc4),yc(idxc4),'r',uvm(idxm4),ym(idxm4),'b',xh4(:,6),xh4(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(19)
plot(uvc(idxc6),yc(idxc6),'r',uvm(idxm6),ym(idxm6),'b',xh6(:,6),xh6(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(20)
plot(uvc(idxc10),yc(idxc10),'r',uvm(idxm10),ym(idxm10),'b',xh10(:,6),xh10(:,1),'k-d')
t1=sgtitle('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(10^3/U_{ref}^2)*\overline{u^{\prime}v^{\prime{2}}}$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% Plot for k 

figure(21)
plot(kc(idxc1),yc(idxc1),'r',km(idxm1),ym(idxm1),'b')
t1=sgtitle('$k/U_{ref}^2$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$k/U_{ref}^2$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(22)
plot(kc(idxc4),yc(idxc4),'r',km(idxm4),ym(idxm4),'b')
t1=sgtitle('$k/U_{ref}^2$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$k/U_{ref}^2$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(23)
plot(kc(idxc6),yc(idxc6),'r',km(idxm6),ym(idxm6),'b')
t1=sgtitle('$k/U_{ref}^2$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$k/U_{ref}^2$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(24)
plot(kc(idxc10),yc(idxc10),'r',km(idxm10),ym(idxm10),'b')
t1=sgtitle('$k/U_{ref}^2$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$k/U_{ref}^2$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


%% plots for e

figure(25)
plot(ec(idxc1),yc(idxc1),'r',em(idxm1),ym(idxm1),'b')
t1=sgtitle('$(H/U_{ref}^3)*\epsilon$: For Various Methods at x/H=1');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(H/U_{ref}^3)*\epsilon$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(26)
plot(ec(idxc4),yc(idxc4),'r',em(idxm4),ym(idxm4),'b')
t1=sgtitle('$(H/U_{ref}^3)*\epsilon$: For Various Methods at x/H=4');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(H/U_{ref}^3)*\epsilon$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

figure(27)
plot(ec(idxc6),yc(idxc6),'r',em(idxm6),ym(idxm6),'b')
t1=sgtitle('$(H/U_{ref}^3)*\epsilon$: For Various Methods at x/H=6');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(H/U_{ref}^3)*\epsilon$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)


figure(28)
plot(ec(idxc10),yc(idxc10),'r',em(idxm10),ym(idxm10),'b')
t1=sgtitle('$(H/U_{ref}^3)*\epsilon$: For Various Methods at x/H=10');
set(t1,'Interpreter','latex')
set(t1,'Fontsize',12)
x2=xlabel('$(H/U_{ref}^3)*\epsilon$');
set(x2,'Interpreter','latex')
set(x2,'Fontsize',12)
y2=ylabel('$y/H$');
set(y2,'Interpreter','latex')
set(y2,'Fontsize',12)
l2=legend('$k-\epsilon$ Model Using Fine Mesh (w/o wall function)','$k-\epsilon$ Model Using Enhanced Wall Function','Driver and Seegmiller Data','Location','northwest');
set(l2,'Interpreter','latex')
set(l2,'Fontsize',9)

%% Saving figures

saveas(figure(1),'u1','jpg')
saveas(figure(2),'u4','jpg')
saveas(figure(3),'u6','jpg')
saveas(figure(4),'u10','jpg')
saveas(figure(5),'v1','jpg')
saveas(figure(6),'v4','jpg')
saveas(figure(7),'v6','jpg')
saveas(figure(8),'v10','jpg')
saveas(figure(9),'uu1','jpg')
saveas(figure(10),'uu4','jpg')
saveas(figure(11),'uu6','jpg')
saveas(figure(12),'uu10','jpg')
saveas(figure(13),'vv1','jpg')
saveas(figure(14),'vv4','jpg')
saveas(figure(15),'vv6','jpg')
saveas(figure(16),'vv10','jpg')
saveas(figure(17),'uv1','jpg')
saveas(figure(18),'uv4','jpg')
saveas(figure(19),'uv6','jpg')
saveas(figure(20),'uv10','jpg')
saveas(figure(21),'k1','jpg')
saveas(figure(22),'k4','jpg')
saveas(figure(23),'k6','jpg')
saveas(figure(24),'k10','jpg')
saveas(figure(25),'ep1','jpg')
saveas(figure(26),'ep4','jpg')
saveas(figure(27),'ep6','jpg')
saveas(figure(28),'ep10','jpg')