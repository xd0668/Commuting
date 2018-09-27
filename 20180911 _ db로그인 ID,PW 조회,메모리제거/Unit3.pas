unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, Data.DBXInterBase;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SQLConnection1: TSQLConnection;
    Personnel: TSQLQuery;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin

  if Edit1.Text = '' then
  begin
    ShowMessage('아이디를 입력하시오.');
    Edit1.SetFocus;
    Exit;
  end;

  if Edit2.Text = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    Edit2.SetFocus;
    Exit;
  end;

  with Personnel do
  begin
    sql.Clear;
    sql.Add('Select * from PERSONNEL');
    sql.Add('Where ID =:id');
    ParamByName('id').AsString := Edit1.Text;
    Open;

    if PERSONNEL.FieldByName('ID').AsString <> Edit1.Text then
    begin
      ShowMessage('아이디가 존재하지 않습니다.');
      Edit1.SetFocus;
      Exit;
    end;

    if PERSONNEL.FieldByName('PassWord').AsString <> Edit2.Text then
    begin
      ShowMessage('비밀번호가 틀렸습니다.');
      Edit2.Text;
      Exit;
    end
    else
    begin
      ShowMessage('로그인 되었습니다.');
      ModalResult := mrOk ;
    end;
  end;




end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrCancel;
end;

end.
