h0=figure('toolbar','none',...
    'position',[200 50 350 450],...
    'name','实例89');
h1=axes('parent',h0,...
    'position',[0.10 0.45 0.8 0.5],...
    'visible','off');
x=0:0.2:2*pi;
y=sin(x);
plot(x,y)
b1=uicontrol('parent',h0,...
    'units','points',...
    'tag','b1',...
    'style','pushbutton',...
    'string','N-Hermite插值',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[20 60 70 20],...
    'callback',[...
        'strn1=get(e2,''string'');,',...
        'n1=str2num(strn1);,',...
        'strn2=get(e3,''string'');,',...
        'n2=str2num(strn2);,',...
        'x=0:0.2:2*pi;,',...
        'i=1;,',...
        'for t=0:0.2:2*pi,',...
        'y(i)=sin(t);,',...
        'ynh(i)=nhermite(t,n1,n2);,',...
        'i=i+1;,',...
        'end,',...
        'plot(x,y,''b*'',x,ynh,''r-''),',...
        'axis([0 7 -1.5 1.5]),',...
        'legend(''sin(x)'',''N-Hermite插值'')']);
b2=uicontrol('parent',h0,...
    'units','points',...
    'tag','b2',...
    'style','pushbutton',...
    'string','误差比较',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[170 60 70 20],...
    'callback',[...
        'strdn1=get(e2,''string'');,',...
        'n1=str2num(strdn1);,',...
        'strdn2=get(e3,''string'');,',...
        'n2=str2num(strdn2);,',...
        'strdn=get(e1,''string'');,',...
        'dn=str2num(strdn);,',...
        'dd=abs(sin(dn)-nhermite(dn,n1,n2));,',...
        'msgbox([''误差为：'',num2str(dd)],''计算结果'')']);
e1=uicontrol('parent',h0,...
    'units','points',...
    'tag','e1',...
    'style','edit',...
    'fontsize',12,...
    'string','1.20',...
    'horizontalalignment','right',...
    'backgroundcolor',[1 1 1],...
    'position',[200 100 40 20]);
t1=uicontrol('parent',h0,...
    'units','points',...
    'tag','t1',...
    'style','text',...
    'string','误差点：',...
    'fontsize',12,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[160 100 40 20]);
e2=uicontrol('parent',h0,...
    'units','points',...
    'tag','e2',...
    'style','edit',...
    'fontsize',12,...
    'string','1.00',...
    'horizontalalignment','right',...
    'backgroundcolor',[1 1 1],...
    'position',[20 85 40 20]);
t2=uicontrol('parent',h0,...
    'units','points',...
    'tag','t2',...
    'style','text',...
    'string','第一节点：',...
    'fontsize',12,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[15 105 50 20]);
e3=uicontrol('parent',h0,...
    'units','points',...
    'tag','e3',...
    'style','edit',...
    'fontsize',12,...
    'string','3.00',...
    'horizontalalignment','right',...
    'backgroundcolor',[1 1 1],...
    'position',[100 85 40 20]);
t3=uicontrol('parent',h0,...
    'units','points',...
    'tag','t3',...
    'style','text',...
    'string','第二节点：',...
    'fontsize',12,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[95 105 50 20]);
b3=uicontrol('parent',h0,...
    'units','points',...
    'tag','b3',...
    'style','pushbutton',...
    'string','关闭',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[100 20 60 20],...
    'callback','close');