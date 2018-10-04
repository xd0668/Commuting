unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;

    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function JuminCheck(data: String): Boolean;
var Arrays: Array[1..13] of integer;
    i, Sum, Temp: integer;
const
    Key: Array[1..13] of integer = (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5, 1);
begin
if Length(data) = 13 then
begin
  Sum:= 0;
  for i:=1 to 13 do
  begin
    Arrays[i]:= StrToInt(Copy(data, i, 1)) * Key[i];
    Sum:= Sum + Arrays[i];
  end;
  Sum:= Sum - Arrays[13];
  Temp:= 11 - (Sum Mod 11);
  if Temp = Arrays[13] then
  begin
    Result:= True;
  end else begin
    Temp:= Temp Mod 10;
    if Temp = Arrays[13] then
    begin
      Result:= True;
    end;
  end;
end;

end;


procedure TForm2.Button1Click(Sender: TObject);
begin
 if JuminCheck(Edit1.Text) = True then
  MessageBoxW(0, '올바른 주민등록 번호입니다.', '', $40)
else
  MessageBoxW(0, '올바르지 않은 주민등록 번호입니다.', '', $10)
end;


end.
