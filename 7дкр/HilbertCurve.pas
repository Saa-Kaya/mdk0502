Unit HilbertCurve;
uses GraphABC;

const 
 u = 10; 
 p = 1;

var 
 scaleFactor: Real = 1.0; 
 depth: Integer = p; 
 xOffset: Integer = 100; 
 yOffset: Integer = 100; 
 
procedure LineRel(dx, dy: Integer); 
begin 
 LineTo(PenX + dx, PenY + dy); 
end; 
procedure a(i: Integer; scale: Real); forward; 
procedure b(i: Integer; scale: Real); forward; 
procedure c(i: Integer; scale: Real); forward; 
procedure d(i: Integer; scale: Real); forward; 
procedure a(i: Integer; scale: Real); 
begin 
 if i > 0 then 
 begin 
 d(i - 1, scale); 
 LineRel(Round(u * scale), 0); 
 a(i - 1, scale); 
 LineRel(0, Round(u * scale)); 
 a(i - 1, scale); 
 LineRel(-Round(u * scale), 0); 
 c(i - 1, scale); 
 end; 
end; 
procedure b(i: Integer; scale: Real); 
begin 
 if i > 0 then 
 begin 
 c(i - 1, scale); 
 LineRel(-Round(u * scale), 0); 
 b(i - 1, scale); 
 LineRel(0, -Round(u * scale)); 
 b(i - 1, scale); 
 LineRel(Round(u * scale), 0); 
 d(i - 1, scale); 
 end; 
end; 
procedure c(i: Integer; scale: Real); 
begin 
 if i > 0 then 
 begin 
 b(i - 1, scale); 
 LineRel(0, -Round(u * scale)); 
 c(i - 1, scale); 
 LineRel(-Round(u * scale), 0); 
 c(i - 1, scale); 
 LineRel(0, Round(u * scale)); 
 a(i - 1, scale); 
 end; 
end; 
procedure d(i: Integer; scale: Real); 
begin 
 if i > 0 then 
 begin 
 a(i - 1, scale); 
 LineRel(0, Round(u * scale)); 
 d(i - 1, scale); 
 LineRel(Round(u * scale), 0); 
 d(i - 1, scale); 
 LineRel(0, -Round(u * scale)); 
 b(i - 1, scale); 
 end; 
end; 
procedure DrawFractal; 
begin 
 ClearWindow; 
 MoveTo(xOffset, yOffset); 
 a(depth, scaleFactor); 
end; 
begin
end.