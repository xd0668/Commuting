unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MaskUtils, StrUtils,
  Vcl.Mask;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;




implementation

{$R *.dfm}

function TelNoAutoMata(vTelNo : String):String;
var
tTelNo : String;
FLocalNo, FSeoul : Boolean;

begin
tTelNo := StringReplace(vTelNo, '-', '', [rfReplaceAll, rfIgnoreCase]);

if (Length(tTelNo) <= 0) then begin
Result := '';
exit;
end;

if (Length(tTelNo) > 11) then begin
result := copy(vTelNo,1,12);
exit;
end;

FLocalNo := False;
FSeoul := False;

if tTelNo[1] = '0' then
FLocalNo := True;
if ( FLocalNo ) and ( tTelNo[2] = '2' ) then
FSeoul := True;
if ( FLocalNo ) then
if ( FSeoul ) then

case Length(tTelNo) of
3 : tTelNo := Copy(tTelNo,1,2) + '-' + Copy(tTelNo,4,1);
6 : tTelNo := Copy(tTelNo,1,2) + '-' + Copy(tTelNo,4,3) + '-'
+ Copy(tTelNo,6,1);
8 : tTelNo := Copy(tTelNo,1,2) + '-' + Copy(tTelNo,4,4) + '-'
+ Copy(tTelNo,7,4)
else tTelNo := vTelNo;
end
else
case Length(tTelNo) of
4 : tTelNo := Copy(tTelNo,1,3) + '-' + Copy(tTelNo,4,1);
7 : tTelNo := Copy(tTelNo,1,3) + '-' + Copy(tTelNo,4,3) + '-'
+ Copy(tTelNo,7,1);
10 : tTelNo := Copy(tTelNo,1,3) + '-' + Copy(tTelNo,4,4) + '-'
+ Copy(tTelNo,8,3);
else tTelNo := vTelNo;
end
else
case Length(tTelNo) of
4 : tTelNo := Copy(tTelNo,1,3) + '-' + Copy(tTelNo,3,1);
9 : tTelNo := Copy(tTelNo,1,4) + '-' + Copy(tTelNo,4,4);
else tTelNo := vTelNo;
end;
Result := tTelNo;


end;





procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then Perform(cm_DialogKey, vk_Tab, 0) //엔터처리
else if (key <> #8) and ((key < #46) or (key > #57)) then abort //Del, Backspace,숫자만 허용
else begin
TEdit(Sender).Text := TelNoAutoMata(Edit1.Text);
TEdit(Sender).SelStart := Length(Edit1.Text);
end;
end;

end.
