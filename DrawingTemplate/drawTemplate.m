clear all
STables=[
	-0.015;
	-0.01;
	-0.005;
	0;
	0.01;
	0.02;
	0.025;
	]
SlopesTable=[
	-0.0703
   	-0.0653
   	-0.0603
   	-0.0553
   	-0.0453
   	-0.0353
   	-0.0303
	]
ITables=[
	0.1853   -0.3160   -0.3160   -1.0804    0.3004    0.3004;
	0.1850   -0.3057   -0.3057   -1.0763    0.2147    0.2147;
	0.1843   -0.2950   -0.2950   -1.0705    0.1271    0.1271;
	0.1782   -0.2789   -0.2789   -1.0798   -0.0289   -0.0289;
	0.1785   -0.2592   -0.2592   -1.0388   -0.1464   -0.1464;
	0.1700   -0.2307   -0.2307   -1.0000   -0.3442   -0.3442;
	0.1630   -0.2137   -0.2137   -0.9719   -0.4591   -0.4591;
	]

IPos	= [0.5013,	0.4907,	0.4793,	0.4663,	0.4377,0.4007,	0.3767]'
ISpeed	= [-0.2780 	-0.1995 -0.1187 0.0345 0.1409 0.3442 0.4724]'



global mh;
global mt;
global ms;
global a1;
global b1;
global a2;
global b2;

mh=0.5;
mt=0.5;
ms=0.05;

a1=0.375;
b1=0.125;
a2=0.175;
b2=0.325;


global SpeedAction
global SlopeAction
global StepSizeAction

global q1;%stance leg angle;
global q2;%swing leg angle;
global q3;%swing theft angle;

global dq1;
global dq2;
global dq3;

global gamma2;
global gamma;

global ls;
global lt;
global l;

global INI_CON
global TIME_SPAN
global g;


%TestConfiguration
SpeedAction=1.0;
SlopeAction=0.0;
dateGenerate;
plot(qout(:,1),qout(:,7),'r');

hold on

SpeedAction=1.5;
SlopeAction=0.0;
dateGenerate;
plot(qout(:,1),qout(:,7),'g');

SpeedAction=0.8;
SlopeAction=0.0;
dateGenerate;
plot(qout(:,1),qout(:,7),'g');



SpeedAction=1.0;
SlopeAction=0.1;
dateGenerate;
plot(qout(:,1),qout(:,7));

SpeedAction=1.0;
SlopeAction=-0.1;
dateGenerate;
plot(qout(:,1),qout(:,7));
grid on
hold off
saveas(gca,'LieGroupAction.eps','psc2');


