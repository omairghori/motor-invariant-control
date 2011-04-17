clear all
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

SpeedAction=1.0;
SlopeAction=0;

global q1;%stance leg angle;
global q2;%swing leg angle;
global q3;%swing theft angle;

qref=[0.1828,-0.2835,-0.2835,-1.0624,-0.0367,-0.0367]
q1=qref(1)+SlopeAction;
q2=qref(2)+SlopeAction;
q3=qref(3)+SlopeAction;

global dq1;
global dq2;
global dq3;

dq1=qref(4)*SpeedAction;
dq2=qref(5)*SpeedAction;
dq3=qref(6)*SpeedAction;


global gamma2;
global gamma;
gamma2=q1+q2;
gamma=0.5*gamma2;






global ls;
global lt;
global l;
ls=a1+b1;
lt=a2+b2;
l=ls+lt;
global INI_CON
global TIME_SPAN
global g;

GRAVITY=9.81;
g=GRAVITY;
TIME_SPAN=[0,2]




INI_CON=[q1,q2,q3,dq1,dq2,dq3]
TIME_SPAN=[0,10]
