unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DBXInterBase, Data.DB, Datasnap.DBClient, SimpleDS, Data.SqlExpr,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, IBX.IBEvents, IBX.IBDatabaseInfo,
  IBX.IBCustomDataSet, IBX.IBTable;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button1: TButton;
    Label10: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);  // 회원가입 종료시 메모리 제거
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Button1Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);     //Form3 작업표시줄 아이콘 생성
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;


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


// 회원가입 종료시 메모리 제거
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Show;
 // Application.Terminate;
end;



//Form3 작업표시줄 아이콘 생성
procedure TForm3.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

//주민번호에 대한 Keypress
procedure TForm3.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자만 입력 하세요.', '오류', MB_ICONERROR or MB_OK);
  end;
end;

//생년월일에 대한 Keypress
procedure TForm3.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','-',#08,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle, '숫자만 입력 하세요.','오류',MB_ICONERROR or MB_OK);
  end;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin

//  ID 입력 확인
 if DBEdit1.Text = '' then
  begin
    MessageBox(Handle, '아이디 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    DBEdit1.SetFocus;
    Exit;
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
    DBComboBox2.SetFocus;
    exit;
    end;

{
if JuminCheck(DBEdit8.Text) = True then
  MessageBoxW(0, '올바른 주민등록 번호입니다.', '', $40)
else
  MessageBoxW(0, '올바르지 않은 주민등록 번호입니다.', '', $10);    }

  Form1.SimpleDataSet1.Post;
  Form1.SimpleDataSet1.ApplyUpdates(-1);
  Form3.Hide;
  Form1.Show;
end;


end.
