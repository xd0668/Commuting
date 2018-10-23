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
    // InterBase PERSONNEL Table ���� �κ�

      SQLQuery1.sql.Clear;
      SQLQuery1.sql.Add('Select * from PERSONNEl');
      SQLQuery1.sql.Add('Where ID = :id');
      SQLQuery1.ParamByName('ID').AsString := Edit1.Text;
      SQLQuery1.Open;

    // InterBase PERSONNEL ID ��
    if SQLQuery1.FieldByName('ID').AsString <> Edit1.Text then
    begin
      MessageBox(Handle, '���̵� �������� �ʽ��ϴ�.', '����', MB_ICONERROR or MB_OK);
      Edit1.SetFocus;
      Exit;
    end;

    // InterBase PERSONNEL PassWord ��
    if SQLQuery1.FieldByName('PassWord').AsString <> Edit2.Text then
    begin
      MessageBox(Handle, '��й�ȣ�� Ʋ�Ƚ��ϴ�.', '����', MB_ICONERROR or MB_OK);
      Edit2.SetFocus;
      Exit;
    end
    else
    // �α��� ����
    begin
      MessageBox(Handle, '�α��� �Ǿ����ϴ�.', '�α��� ����', MB_ICONASTERISK or MB_OK);
      Form1.Hide;
    end;
  end;
  // �α��� ������ ����ȭ�� ���
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
