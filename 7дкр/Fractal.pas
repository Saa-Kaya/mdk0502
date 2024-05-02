uses GraphABC, HilbertCurve; 
 
procedure KeyDown(key: Integer); 
begin 
 case key of 
 VK_W: Inc(depth); //Кнопка W - увеличить глубину
 VK_S: if depth > 1 then Dec(depth); //Кнопка S - уменьшить глубину
 VK_LEFT: Dec(xOffset, 10); 
 VK_RIGHT: Inc(xOffset, 10); 
 VK_UP: Dec(yOffset, 10); 
 VK_DOWN: Inc(yOffset, 10); 
 VK_A: scaleFactor := scaleFactor * 1.1; // Кнопка A - увеличиваем масштаб 
 VK_D: scaleFactor := scaleFactor / 1.1; // Кнопка D - уменьшаем масштаб 
 end; 
 DrawFractal; 
end; 

begin 
 SetWindowCaption('Фракталы: Кривая Гильберта'); 
 SetWindowSize(500, 500); 
 ClearWindow; 
 OnKeyDown := KeyDown; 
 DrawFractal; 
end.