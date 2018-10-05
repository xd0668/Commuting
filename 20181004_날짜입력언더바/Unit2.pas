unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  key_back : integer; // 1:backspace가 눌러졌음.
  vdate : string;
  keypos : integer;
  Result : string;

implementation

{$R *.dfm}

function A(vTelNo : String):String;   //  전화 번호 입력시 '-' 처리 함수
var
tTelNo : String;
FLocalNo, FSeoul : Boolean;

begin
tTelNo := StringReplace(vTelNo, '-', '', [rfReplaceAll, rfIgnoreCase]);

if (Length(tTelNo) <= 0) then begin
Result := '';
exit;
end;

if (Length(tTelNo) > 9) then begin
result := copy(vTelNo,1,10);
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
4 : tTelNo := Copy(tTelNo,1,4) + '-' + Copy(tTelNo,5,2);

else tTelNo := vTelNo;
end  ;

case Length(tTelNo) of

7 : tTelNo := Copy(tTelNo,1,4) + '-' + Copy(tTelNo,5,2)+ '-' +Copy(tTelNo,7,2);
else tTelNo := vTelNo;
end;
Result := tTelNo;
end;


procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['0'..'9','-',#8,#13,#25] then
 begin
   TEdit(Sender).Text := A(Edit1.Text);
TEdit(Sender).SelStart := Length(Edit1.Text);
 end
  else
  begin
    Key := #0;
    MessageBox(Handle, '다시작성해라.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

end.


