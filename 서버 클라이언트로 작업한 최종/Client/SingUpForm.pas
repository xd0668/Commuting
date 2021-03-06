unit SingUpForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TSingUp = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SingUp: TSingUp;
  vdate : String;
  keypos : integer;
  key_back : integer; // 1:backspace가 눌러졌음.

implementation

{$R *.dfm}

uses ClientModuleUnit1, Login;

 // 전화 번호 입력시 '-' 처리 함수
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

//  주민번호 Check 함수
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

//  생년월일 , 입사일시 입력시 '-' 처리 함수
function A(vTelNo : String):String;
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

// 회원가입 버튼
procedure TSingUp.Button1Click(Sender: TObject);
begin

   begin

//  ID 입력 확인
 if DBEdit1.Text = '' then
  begin
    MessageBox(Handle, '아이디 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit1.SetFocus;
    Exit;
  end ;

   with ClientModule1 do
  begin
    // InterBase PERSONNEL Table 연결 부분

      PERSONNEL_SQLQuery.sql.Clear;
      PERSONNEL_SQLQuery.sql.Add('Select * from PERSONNEl');
      PERSONNEL_SQLQuery.sql.Add('Where ID = :id');
      PERSONNEL_SQLQuery.ParamByName('ID').AsString := LoginForm.edit1.text;
      PERSONNEL_SQLQuery.Open;
  end;
    if ClientModule1.PERSONNEL.FieldByName('ID').AsString = DBEdit1.Text then
    begin
      MessageBox(Handle, '아이디 중복.', '오류', MB_ICONQUESTION or MB_OK);
      DBEdit1.SetFocus;
      Exit;
    end
  end;

//PW 입력 확인
   if DBEdit2.Text = '' then
  begin
    MessageBox(Handle, '비밀번호 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit2.SetFocus;
    Exit;
  end;

//이름 입력 확인
   if DBEdit3.Text = '' then
  begin
    MessageBox(Handle, '이름 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit3.SetFocus;
    Exit;
  end;

//핸드폰 번호 입력 확인
   if DBEdit4.Text = '' then
  begin
    MessageBox(Handle, '핸드폰번호 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit4.SetFocus;
    Exit;
  end;

//긴급연락처 입력 확인
   if DBEdit5.Text = '' then
  begin
    MessageBox(Handle, '긴급연락처 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit5.SetFocus;
    Exit;
  end;

//주민번호를 입력 확인
  if DBEdit6.Text = '' then
  begin
    MessageBox(Handle, '주민번호 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit6.SetFocus;
    exit;
    end;

//주소를 입력하세요
  if DBEdit7.Text = '' then
  begin
    MessageBox(Handle, '주소 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit7.SetFocus;
    Exit;
  end;

//생일 입력 확인
  if DBEdit8.Text = '' then
  begin
    MessageBox(Handle, '생일 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit8.SetFocus;
    exit;
    end;

//입사일자 입력 확인
  if DBEdit9.Text = '' then
  begin
    MessageBox(Handle, '입사일자 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit9.SetFocus;
    exit;
    end;

//이메일 입력 확인
  if DBEdit11.Text = '' then
  begin
    MessageBox(Handle, '이메일 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit11.SetFocus;
    exit;
    end;

//부서 입력 확인
  if DBComboBox1.Text = '' then
  begin
    MessageBox(Handle, '부서 선택하세요.', '오류', MB_ICONQUESTION or MB_OK);
    exit;
    end;

//직급 입력 확인
  if DBComboBox2.Text = '' then
  begin
    MessageBox(Handle, '직급 선택하세요.', '오류', MB_ICONQUESTION or MB_OK);
    exit;
    end;


  if JuminCheck(DBEdit6.Text) = False then
    begin
      MessageBoxW(0, '올바르지 않은 주민등록 번호입니다.', '', $10);
      DBEdit6.SetFocus;
      exit;
    end;


  ClientModule1.PERSONNEL.Post;
  clientmodule1.PERSONNEL.ApplyUpdates(-1);
  MessageBox(Handle,'회원가입이 완료되었습니다.','확인',MB_ICONINFORMATION or MB_OK);
  SingUp.Close;
  LoginForm.Show;
end;

//  아이디 입력후 Enter 사용시 다음으로 넘어가는것
procedure TSingUp.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True,True);
  end;
end;

// 아이디 입력시 KeyPress 처리
procedure TSingUp.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자와 영어만 입력하세요', '오류', MB_ICONERROR or MB_OK )
  end;
end;

// 비밀번호 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 비밀번호 입력시 KeyPress 처리
procedure TSingUp.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자와 영어만 입력하세요.', '오류', MB_ICONERROR or MB_OK)
  end;
end;
end;

// 이름 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 이름 입력시 KeyPress 처리
procedure TSingUp.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#$20 .. #$7E] then
  begin
    Key := #0;
    MessageBox(Handle, '한글만 입려하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

// 휴대폰번호 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 휴대폰번호 입력시 KeyPress 처리  & '-' 처리
procedure TSingUp.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8,#13,#25] then
  begin
    TEdit(Sender).Text := TelNoAutoMata(DBEdit4.Text);
    TEdit(Sender).SelStart := Length(DBEdit4.Text);
  end
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

// 긴급연락처 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 긴급연락처 입력시 KeyPress 처리  & '-' 처리
procedure TSingUp.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8,#13,#25] then
  begin
    TEdit(Sender).Text := TelNoAutoMata(DBEdit5.Text);
    TEdit(Sender).SelStart := Length(DBEdit5.Text);
  end
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

//  주민번호 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  주민번호 입력시 KeyPress 처리
procedure TSingUp.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

//  주소 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  생일 입력후  Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  생일 입력시 KeyPress 처리
procedure TSingUp.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['0'..'9','-',#8,#13,#25] then
 begin
   TEdit(Sender).Text := A(DBEdit8.Text);
   TEdit(Sender).SelStart := Length(DBEdit8.Text);
 end
  else
  begin
    Key := #0;
    MessageBox(Handle, '숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

//  입사일자 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  입사일자 입력시 KeyPress 처리
procedure TSingUp.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['0'..'9','-',#8,#13,#25] then
 begin
   TEdit(Sender).Text := A(DBEdit9.Text);
   TEdit(Sender).SelStart := Length(DBEdit9.Text);
 end
  else
  begin
    Key := #0;
    MessageBox(Handle, '숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

//  이메일 입력후 Enter 사용시 다음으로 넘어갈것
procedure TSingUp.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  이메일 입력시 KeyPress 처리
procedure TSingUp.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z','@',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle, '예시(ID@nvaer.com).', '오류', MB_ICONERROR or MB_OK);
  end;
end;


// 작업표시줄 아이콘 생성
procedure TSingUp.CreateParams(var Params: TCreateParams);
  begin
    inherited CreateParams(Params);
    Params.ExStyle := WS_EX_APPWINDOW;
    Params.WndParent := GetDesktopWindow;
  end;


// 회원가입 화면 종료시 메모리 제거
procedure TSingUp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LoginForm.Show;
 // Application.Terminate;
end;

end.




