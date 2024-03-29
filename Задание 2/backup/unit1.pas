unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var s: integer;
  s1, a, d, r: real;
begin
s:=strtoint(Edit1.Text);
a:= sqrt(s);
d:= a*sqrt(2);
r:=d/2;
s1:= pi*sqr(r);
label2.Caption:='Сторона квадрата (a)= '+floattostr(a);
label3.Caption:='Диагональ (d)= '+floattostr(a);
label4.Caption:='Площадь круга (s1)= '+floattostr(a);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
  label2.Caption:='Сторона квадрата (a)= ';
label3.Caption:='Диагональ (d)= ';
label4.Caption:='Площадь круга (s1)= ';
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  end;

end.

