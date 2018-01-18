h0=figure('toolbar','none',...
    'position',[198 56 408 468],...
    'name','实例51');
h1=axes('parent',h0,...
    'position',[0.15 0.45 0.7 0.5],...
    'visible','off');
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
f1=surf(x,y,z);
shading interp
view(-50,30)
camlight left
colormap([1 0 0])
fv=get(h0,'colormap');
ifv=fv;
p1=uicontrol('parent',h0,...
    'style','pushbutton',...
    'string','重置',...
    'position',[280 120 50 30],...
    'callback',[...
        'set(s1,''value'',ifv(1));,',...
        'set(s2,''value'',ifv(2));,',...
        'set(s3,''value'',ifv(3));,',...
        'set(h0,''colormap'',ifv)']);
p2=uicontrol('parent',h0,...
    'style','pushbutton',...
    'string','关闭',...
    'position',[280 60 50 30],...
    'callback','close');
s1=uicontrol('parent',h0,...
    'style','slider',...
    'min',0,...
    'max',1,...
    'value',fv(1),...
    'position',[20 150 200 20],...
    'callback',[...
        's1k=get(s1,''value'');,',...
        'fv(1)=s1k;,',...
        'set(h0,''colormap'',fv);']);
t1=uicontrol('parent',h0,...
    'style','text',...
    'string','改变红色成分',...
    'position',[20 170 100 20]);
s2=uicontrol('parent',h0,...
    'style','slider',...
    'min',0,...
    'max',1,...
    'value',fv(2),...
    'position',[20 100 200 20],...
    'callback',[...
        's2k=get(s2,''value'');,',...
        'fv(2)=s2k;,',...
        'set(h0,''colormap'',fv);']);
t2=uicontrol('parent',h0,...
    'style','text',...
    'string','改变绿色成分',...
    'position',[20 120 100 20]);
s3=uicontrol('parent',h0,...
    'style','slider',...
    'min',0,...
    'max',1,...
    'value',fv(3),...
    'position',[20 50 200 20],...
    'callback',[...
        's3k=get(s3,''value'');,',...
        'fv(3)=s3k;,',...
        'set(h0,''colormap'',fv);']);
t1=uicontrol('parent',h0,...
    'style','text',...
    'string','改变蓝色成分',...
    'position',[20 70 100 20]);
