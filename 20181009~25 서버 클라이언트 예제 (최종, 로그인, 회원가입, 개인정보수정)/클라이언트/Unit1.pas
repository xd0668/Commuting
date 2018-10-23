unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.FMTBcd, Data.DBXInterBase, Data.DB, Data.SqlExpr,ClientModuleUnit1;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses  UclientClass,  ClientClassesUnit1, Unit2, Unit3;



procedure TForm1.Button1Click(Sender: TObject);

begin


 with ClientModule1 do
  begin
    // InterBase PERSONNEL Table 연결 부분

      SQLQuery1.sql.Clear;
      SQLQuery1.sql.Add('Select * from PERSONNEl');
      SQLQuery1.sql.Add('Where ID = :id');
      SQLQuery1.ParamByName('ID').AsString := Edit1.Text;
      SQLQuery1.Open;

    // InterBase PERSONNEL ID 비교
    if SQLQuery1.FieldByName('ID').AsString <> Edit1.Text then
    begin
      MessageBox(Handle, '아이디가 존재하지 않습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit1.SetFocus;
      Exit;
    end;

    // InterBase PERSONNEL PassWord 비교
    if SQLQuery1.FieldByName('PassWord').AsString <> Edit2.Text then
    begin
      MessageBox(Handle, '비밀번호가 틀렸습니다.', '오류', MB_ICONERROR or MB_OK);
      Edit2.SetFocus;
      Exit;
    end
    else
    // 로그인 성공
    begin
      MessageBox(Handle, '로그인 되었습니다.', '로그인 성공', MB_ICONASTERISK or MB_OK);
      Form1.Hide;
    end;
  end;
  // 로그인 성공시 메인화면 출력
  Form2.Show;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ClientModule1.PERSONNEL.Insert;
   Form1.Hide;
   Form3.Show;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
