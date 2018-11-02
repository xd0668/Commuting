unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;
  today : TDateTime;
  s : string;
  CalenderDate : String;
  LoginID : String;

implementation

{$R *.dfm}

uses ClientModuleUnit1, MainForm, SingUpForm;

// 로그인 버튼
procedure TLoginForm.Button1Click(Sender: TObject);
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

  with ClientModule1 do
  begin

    // InterBase PERSONNEL Table 연결 부분
      PERSONNEL_SQLQuery.sql.Clear;
      PERSONNEL_SQLQuery.sql.Add('Select * from PERSONNEl');
      PERSONNEL_SQLQuery.sql.Add('Where ID = :id');
      PERSONNEL_SQLQuery.ParamByName('ID').AsString := Edit1.Text;
      PERSONNEL_SQLQuery.Open;

    // InterBase PERSONNEL ID 비교
    if PERSONNEL_SQLQuery.FieldByName('ID').AsString <> Edit1.Text then
    begin
      MessageBox(Handle, '아이디가 존재하지 않습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit1.SetFocus;
      Exit;
    end;

    // InterBase PERSONNEL PassWord 비교
    if PERSONNEL_SQLQuery.FieldByName('PW').AsString <> Edit2.Text then
    begin
      MessageBox(Handle, '비밀번호가 틀렸습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit2.SetFocus;
      Exit;
    end
    else
    // 로그인 성공
    begin
      MessageBox(Handle, '로그인 되었습니다.', '로그인 성공', MB_ICONASTERISK or MB_OK);
      LoginForm.Hide;
    end;

      // 로그인 성공시 메인화면 출력
      Main.Show;
      Main.Label2.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Department').AsString; //  메인 화면으로 부서명 출력
      Main.Label3.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Class').AsString;  //
      Main.Label4.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('NAME').AsString;

  end;

    // 로그인 버튼 클릭시 달락에 그 아이디에 대한 일정 표시
    Main.DBPlannerMonthView1.Date;
    CalenderDate := FormatDateTime('yyyy-mm',Main.DBPlannerMonthView1.Date);
    LoginID := LoginForm.Edit1.Text;


      with ClientModule1 do
      begin
        SQLQuery1.sql.Clear;
        SQLQuery1.sql.Add('select ID,TEST,WORKTYPE,ONTIME from WORK22');
        SQLQuery1.sql.Add('where TEST = ''' + CalenderDate + ''' and ID = ''' + LoginID +'''' );
        SQLQuery1.Open;
        SQLQuery1.First;

        while(not SQLQuery1.EOF)do begin

          with Main.DBPlannerMonthView1.CreateItem do
          begin
            ItemStartTime := SQLQuery1.FieldByName('ONTIME').AsDateTime;
            ItemEndTime := SQLQuery1.FieldByName('ONTIME').AsDateTime;
            Text.Text := SQLQuery1.FieldByName('WORKTYPE').AsString;
            Update;
          end;

        SQLQuery1.Next;

        end;
      end;


end;

// 회원가입 버튼
procedure TLoginForm.Button2Click(Sender: TObject);
begin
  LoginForm.Hide;
  Singup.Show;
  Singup.Label1.Caption := '회원가입';
  today := now;
  ClientModule1.PERSONNEL.Insert;
  Singup.DBEdit10.Text := DateTimeToStr(today);
end;

// ID 입력 시 ID 개수 맞는지 확인    2018-09-14
procedure TLoginForm.Edit1Change(Sender: TObject);
begin
  s := Edit1.Text;
  Edit1.Color := RGB(255, 170, 170);
  if (s.Length > 0) and (s.Length <= 5)then
  Edit1.StyleElements := [seBorder]
  else
  Edit1.StyleElements := [seFont, seClient, seBorder]
end;

// Edit1에 입력 후 Enter 사용시 다음으로 넘어가는것   2018-09-14
procedure TLoginForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl,True,True);
  end;
end;

// Edit1 에 대한 KeyPress
procedure TLoginForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','a'..'z','A'..'Z',#08,#13,#25] then
  else
  begin
    Key := #0;
    MessageBox(Handle,'숫자,영어만 입력 하세요','오류',MB_ICONERROR or MB_OK);
  end;
end;

// PW 입력 시 PW 개수 맞는지 확인    2018-09-14
procedure TLoginForm.Edit2Change(Sender: TObject);
begin
   s := Edit2.Text;
  Edit2.Color := RGB(255, 170, 170);
  if (s.Length > 0) and (s.Length <= 5) then
  Edit2.StyleElements := [seBorder]
  else
  Edit2.StyleElements := [seFont, seClient, seBorder]
end;

// Edit2에 입력 후 Enter 사용시 다음으로 넘어가는것   2018-09-14
procedure TLoginForm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
  end;
end;

// Edit2 에 대한 KeyPress
procedure TLoginForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','a'..'z','A'..'Z',#08,#13,#25] then
  else
  begin
     Key := #0;
     MessageBox(Handle,'숫자,영아만 입력 하세요.','오류',MB_ICONERROR or MB_OK);
  end;
end;

// 로그인 화면 종료시 메모리 제거
procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.

