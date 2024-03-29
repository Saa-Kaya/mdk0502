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
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.Clear;
  edit2.Clear;
  edit1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b: integer;
  f: real;
begin
a:=strtoint(Edit1.Text);
b:=strtoint(Edit2.Text);
f:=(sqrt(pi/8)*sqrt((sqrt(a+b))/(sqr(a)+sqr(b))))-a*exp(3*ln(b));
Memo1.Lines.add('При значении а = '+inttostr(a)+' и значении b = '+inttostr(b)+' функция будет равна '+floattostr(f));
end;

end.

