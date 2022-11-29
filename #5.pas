Uses GraphAbc;
begin

var a,b,i,x,y:integer;
i:=8;
b:= 10;
x:= 75;
y:= 75;
for var g:=1 to i do begin
circle(x,y,b);
b:=b+5;
x:= x + 35;
y:= y + 35;
end;
floodfill(75,75,clblue);
floodfill(110,110,clMediumOrchid);
floodfill(145,145,clAquamarine);
floodfill(180,180,clCrimson);
floodfill(215,215,clFuchsia);
floodfill(250,250,clNavy);
floodfill(285,285,clDarkViolet);
floodfill(320,320,clGreen);
end.