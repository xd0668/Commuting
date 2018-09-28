unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DBXInterBase,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient, SimpleDS;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    SQLConnection1: TSQLConnection;
    PERSONNEL: TSQLQuery;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    PERSONNEL_SimpleDataSet: TSimpleDataSet;
    procedure Button1Click(Sender: TObject);                         // 로그인 버튼
    procedure Button2Click(Sender: TObject);                         // 회원가입 버튼
    procedure FormClose(Sender: TObject; var Action: TCloseAction);  // 메인화면 종료시 메모리 제거
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);         // Edit1 에 대한 KeyPress
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);         // Edit2 에 대한 KeyPress

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s : string;
  today : TDateTime;

implementation

{$R *.dfm}

uses Unit2, Unit3;

// 로그인 버튼
procedure TForm1.Button1Click(Sender: TObject);
begin
  // 아이디 입력 확인
  if Edit1.Text = '' then
  begin
    MessageBox(Handle, '아이디를 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    Edit1.SetFocus;
    Exit;
  end;

  // 비밀번호 입력 확인
  if Edit2.Text = '' then
  begin
    MessageBox(Handle, '비밀번호를 입력하세요.', '오류', MB_ICONQUESTION or MB_OK);
    Edit2.SetFocus;
    Exit;
  end;

  with PERSONNEL do
  begin
    // InterBase PERSONNEL Table 연결 부분
    sql.Clear;
    sql.Add('Select * from PERSONNEl');
    sql.Add('Where ID = :id');
    ParamByName('ID').AsString := Edit1.Text;
    Open;

    // InterBase PERSONNEL ID 비교
    if PERSONNEL.FieldByName('ID').AsString <> Edit1.Text then
    begin
      MessageBox(Handle, '아이디가 존재하지 않습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit1.SetFocus;
      Exit;
    end;

    // InterBase PERSONNEL PassWord 비교
    if PERSONNEL.FieldByName('PassWord').AsString <> Edit2.Text then
    begin
      MessageBox(Handle, '비밀번호가 틀렸습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit2.SetFocus;
      Exit;
    end
    else
    // 로그인 성공
    begin
      //MessageBox(Handle, '로그인 되었습니다.', '로그인 성공', MB_ICONASTERISK or MB_OK);
      Form1.Hide;
    end;
  end;
  // 로그인 성공시 메인화면 출력
  Form2.Show;
end;

// 회원가입 버튼
procedure TForm1.Button2Click(Sender: TObject);
begin
   Form1.Hide;
  Form3.Show;
  today := now;
  PERSONNEL_SimpleDataSet.Insert;
  Form3.DBEdit10.Text := DateTimeToStr(today);

end;

// ID 입력 시 ID 개수 맞는지 확인    2018-09-14
procedure TForm1.Edit1Change(Sender: TObject);
begin
  s := Edit1.Text;
  Edit1.Color := RGB(255, 170, 170);
  if (s.Length > 0) and (s.Length <= 5)then
  Edit1.StyleElements := [seBorder]
  else
  Edit1.StyleElements := [seFont, seClient, seBorder]
end;

// Edit1에 입력 후 Enter 사용시 다음으로 넘어가는것   2018-09-14
procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl,True,True);
  end;
end;

// PW 입력 시 PW 개수 맞는지 확인    2018-09-14
procedure TForm1.Edit2Change(Sender: TObject);
begin
  s := Edit2.Text;
  Edit2.Color := RGB(255, 170, 170);
  if (s.Length > 0) and (s.Length <= 5) then
  Edit2.StyleElements := [seBorder]
  else
  Edit2.StyleElements := [seFont, seClient, seBorder]
end;

// Edit1 에 대한 KeyPress
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','a'..'z','A'..'Z',#08,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자,영어만 입력 하세요','오류',MB_ICONERROR or MB_OK);
  end;

end;

// Edit2에 입력 후 Enter 사용시 다음으로 넘어가는것   2018-09-14
procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// Edit2 에 대한 KeyPress
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','a'..'z','A'..'Z',#08,#13,#25] then
  else
  begin
     Key := #0;
     MessageBox(Handle,'숫자,영아만 입력 하세요.','오류',MB_ICONERROR or MB_OK);
  end;
end;

// 로그인 화면 종료시 메모리 제거
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
