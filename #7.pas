uses graphABC;//модуль для работы с графикой
var a,x1,x2,x3,y1,y2:integer;
procedure trk; //процедура рисования траектории
begin
line(x1,y1,x2,y2);
line(x2,y2,x3,y1);
end;
procedure square(x,y:integer);//процедура рисования закрашенного квадрата
begin
setbrushcolor(clBlack);
rectangle(x-a,y-a,x+a,y+a);
end;
var x,y:integer;
begin
setwindowsize(600,600);//размеры окна
a:=30;//половина стороны квадрата
x1:=a;//левая точка траектории
x2:=windowwidth div 2;//средняя точка
x3:=windowwidth-a;//правая точка
y1:=windowheight-a;//низ траектории
y2:=a; //верх
trk;//рисуем траекторию
lockdrawing;//блокируем вывод в графическое окно
x:=x1;//ставим квадрат в левую нижнюю точку
y:=y1;
while x<=x2 do //движемся от точки  к точке 2
 begin
  clearwindow; //очищаем окно
  trk;//рисуем траекторию
  square(x,y);//рисуем квадрат
  sleep(20); //задержка 20 млс для просмотра
  x:=x+1; //на 1 вправо
  y:=y-2;//на 2 вверх
  redraw; //перерисовываем
 end;
while x<=x3 do//движемся от точки 2 к точке 3
 begin
  clearwindow;
  trk;
  square(x,y);
  sleep(20);
  x:=x+1;//1 вправо
  y:=y+2;//на 2 вниз
  redraw;
 end;
end.