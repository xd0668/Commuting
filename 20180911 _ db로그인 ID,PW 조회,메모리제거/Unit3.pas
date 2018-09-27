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
    ShowMessage('���̵� �Է��Ͻÿ�.');
    Edit1.SetFocus;
    Exit;
  end;

  if Edit2.Text = '' then
  begin
    ShowMessage('��й�ȣ�� �Է��ϼ���.');
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
      ShowMessage('���̵� �������� �ʽ��ϴ�.');
      Edit1.SetFocus;
      Exit;
    end;

    if PERSONNEL.FieldByName('PassWord').AsString <> Edit2.Text then
    begin
      ShowMessage('��й�ȣ�� Ʋ�Ƚ��ϴ�.');
      Edit2.Text;
      Exit;
    end
    else
    begin
      ShowMessage('�α��� �Ǿ����ϴ�.');
      ModalResult := mrOk ;
    end;
  end;




end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrCancel;
end;

end.
