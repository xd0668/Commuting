unit InformationUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TInforUpdate = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InforUpdate: TInforUpdate;

implementation

{$R *.dfm}

uses ClientModuleUnit1, MainForm, Login;

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

// 회원정보 수정 버튼
procedure TInforUpdate.Button1Click(Sender: TObject);
var
   a : String;
begin
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

  begin
  a :=  LoginForm.Edit1.Text;

  ClientModule1.ClientDataSet1.Post;
  ClientModule1.ClientDataSet1.ApplyUpdates(-1);
  MessageBox(Handle,'회원정보수정이 완료되었습니다.','확인',MB_ICONINFORMATION or MB_OK);
  InforUpdate.Close;

     with ClientModule1  do
       begin
         PERSONNEL_SQLQuery.close;
         PERSONNEL_SQLQuery.SQL.Clear;
         PERSONNEL_SQLQuery.SQL.Add('select * from PERSONNEL where ID = ''' + a + '''');
         PERSONNEL_SQLQuery.Open;

       end;
  end;

  Main.Label2.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Department').AsString; //  메인 화면으로 부서명 출력
  Main.Label3.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Class').AsString;  //
  Main.Label4.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('NAME').AsString;
  Main.Show;
end;

// 개인정보수정 화면 종료시 메모리 제거
procedure TInforUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main.Show;
 // Application.Terminate;
end;

// 비밀번호 입력후 Enter 사용시 다음으로 넘어갈것
procedure TInforUpdate.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 비밀번호 입력시 KeyPress 처리
procedure TInforUpdate.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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
procedure TInforUpdate.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 이름 입력시 KeyPress 처리
procedure TInforUpdate.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#$20 .. #$7E] then
  begin
    Key := #0;
    MessageBox(Handle, '한글만 입려하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

// 휴대폰번호 입력후 Enter 사용시 다음으로 넘어갈것
procedure TInforUpdate.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 휴대폰번호 입력시 KeyPress 처리  & '-' 처리
procedure TInforUpdate.DBEdit4KeyPress(Sender: TObject; var Key: Char);
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
procedure TInforUpdate.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// 긴급연락처 입력시 KeyPress 처리  & '-' 처리
procedure TInforUpdate.DBEdit5KeyPress(Sender: TObject; var Key: Char);
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

//  주소 입력후 Enter 사용시 다음으로 넘어갈것
procedure TInforUpdate.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  생일 입력후  Enter 사용시 다음으로 넘어갈것
procedure TInforUpdate.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  생일 입력시 KeyPress 처리
procedure TInforUpdate.DBEdit8KeyPress(Sender: TObject; var Key: Char);
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
procedure TInforUpdate.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  입사일자 입력시 KeyPress 처리
procedure TInforUpdate.DBEdit9KeyPress(Sender: TObject; var Key: Char);
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
procedure TInforUpdate.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

//  이메일 입력시 KeyPress 처리
procedure TInforUpdate.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z','@',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle, '예시(ID@nvaer.com).', '오류', MB_ICONERROR or MB_OK);
  end;
end;

end.
