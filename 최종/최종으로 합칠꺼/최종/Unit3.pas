unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.FMTBcd, Data.SqlExpr;

type
  TForm3 = class(TForm)
    Label1: TLabel;
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
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label14: TLabel;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);                         // 회원가입 버튼
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);       // 아이디 입력시 KeyPress 처리
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);       // 비밀번호 입력시 KeyPress 처리
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);       // 이름 입력시 KeyPress 처리
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);       // 전화번호 입력시 KeyPress 처리
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);       // 이메일 입력시 KeyPress 처리
    procedure CreateParams(var Params: TCreateParams); override;     // Form3 작업표시줄 아이콘 생성
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);  // 회원가입 종료시 메모리 제거
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  vdate : String;
  keypos : integer;
  key_back : integer; // 1:backspace가 눌러졌음.

implementation

{$R *.dfm}

uses Unit1, Unit2;

function TelNoAutoMata(vTelNo : String):String;   //  전화 번호 입력시 '-' 처리 함수
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

// 회원가입 버튼
procedure TForm3.Button1Click(Sender: TObject);
begin

//  ID 입력 확인
 if DBEdit1.Text = '' then
  begin
    MessageBox(Handle, '아이디 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit1.SetFocus;
    Exit;
  end ;

  with Form1.PERSONNEL do
  begin
    // InterBase PERSONNEL Table 연결 부분
    sql.Clear;
    sql.Add('Select * from PERSONNEl');
    sql.Add('Where ID = :id');
    ParamByName('ID').AsString := DBEdit1.Text;
     open;
    if Form1.PERSONNEL.FieldByName('ID').AsString = DBEdit1.Text then
    begin
      MessageBox(Handle, '아이디 중복.', '오류', MB_ICONQUESTION or MB_OK);
      DBEdit1.SetFocus;
      Exit;
    end
    else
    begin
      MessageBox(Handle, '사용 가능한 아이디입니다.', '오류', MB_ICONQUESTION or MB_OK);
      DBEdit2.SetFocus;
    end;
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

 //이메일 입력 확인
   if DBEdit5.Text = '' then
  begin
    MessageBox(Handle, '이메일 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit5.SetFocus;
    Exit;
  end;

//주소를 입력하세요
  if DBEdit6.Text = '' then
  begin
    MessageBox(Handle, '주소 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit6.SetFocus;
    Exit;
  end;

//주민번호를 입력 확인
  if DBEdit7.Text = '' then
  begin
    MessageBox(Handle, '주민번호 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit7.SetFocus;
    exit;
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

//긴급연락처 입력 확인
  if DBEdit11.Text = '' then
  begin
    MessageBox(Handle, '긴급연락처 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit11.SetFocus;
    exit;
    end;

//부서 입력 확인
  if DBComboBox1.Text = '' then
  begin
    MessageBox(Handle, '부서 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    exit;
    end;

//직급 입력 확인
  if DBComboBox2.Text = '' then
  begin
    MessageBox(Handle, '직급 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    exit;
    end;

{
if JuminCheck(DBEdit8.Text) = True then
  MessageBoxW(0, '올바른 주민등록 번호입니다.', '', $40)
else
  MessageBoxW(0, '올바르지 않은 주민등록 번호입니다.', '', $10);    }

  Form1.PERSONNEL_SimpleDataSet.Post;
  Form1.PERSONNEL_SimpleDataSet.ApplyUpdates(-1);
  Form3.Hide;
  Form1.Show;
end;

// 아이디 입력시 KeyPress 처리
procedure TForm3.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자와 영어만 입력하세요', '오류', MB_ICONERROR or MB_OK )
  end;
end;

// 비밀번호 입력시 KeyPress 처리
procedure TForm3.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

// 이름 입력시 KeyPress 처리
procedure TForm3.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z',#$20 .. #$7E] then
  begin
    Key := #0;
    MessageBox(Handle, '한글만 입려하세요.', '오류', MB_ICONERROR or MB_OK)
  end;
end;

// 전화번호 입력시 KeyPress 처리  & '-' 처리
procedure TForm3.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8,#13,#25] then
  begin
    TEdit(Sender).Text := TelNoAutoMata(DBEdit4.Text);
    TEdit(Sender).SelStart := Length(DBEdit4.Text);
  end
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK)
  end;
end;

//  이메일 입력시 KeyPress 처리
procedure TForm3.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','A'..'Z','a'..'z','@','.',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle, '예시(ID@nvaer.com).', '오류', MB_ICONERROR or MB_OK);
  end;
end;

procedure TForm3.DBEdit8Change(Sender: TObject);
begin
    DBEdit8.selstart := length(DBEdit8.text);
if (length(DBEdit8.text)=5) and (key_back = 0) then
begin
vdate := copy(DBEdit8.text,1,length(DBEdit8.text)-1)+'-';
vdate := vdate + copy(DBEdit8.text,length(DBEdit8.text),1);
DBEdit8.text := vdate;
end;

if (length(DBEdit8.text)=8) and (key_back = 0) then
begin
vdate := copy(DBEdit8.text,1,length(DBEdit8.text)-1)+'-';
vdate := vdate + copy(DBEdit8.text,length(DBEdit8.text),1);
DBEdit8.text := vdate;
end;
end;

procedure TForm3.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  keypos := length(DBEdit8.text);

  if Key in ['0'..'9',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle, '숫자만 입력하세요.', '오류', MB_ICONERROR or MB_OK);
  end;

end;


//Form3 작업표시줄 아이콘 생성
procedure TForm3.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

// 회원가입 종료시 메모리 제거
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Show;
  Form3.Refresh;
end;

end.
