Uses GraphAbc;
begin

var a,b,i:integer;
i:=10;
b:=50;
for var g:=1 to i do begin
SetPenColor(rgb(random(256), random(256), random(256)));
if b<=290 then
circle(b,100,10);
b:=b+30
end;
end.