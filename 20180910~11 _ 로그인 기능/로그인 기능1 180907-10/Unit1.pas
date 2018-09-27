unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DBXInterBase, Data.FMTBcd, Data.SqlExpr, Data.DB, Datasnap.DBClient,
  SimpleDS;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;

    Button1: TButton;
    SQLConnection1: TSQLConnection;
    DataSource1: TDataSource;
    TEST2: TSQLQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);


begin
  if edit1.Text='' then begin
    showmessage('���̵� �Է��Ͽ� �ּ���');
    edit1.SetFocus;
    exit;
  end;
  if edit2.Text='' then begin
    showmessage('�н����带 �Է��Ͽ� �ּ���');
    edit2.SetFocus;
    exit;
  end;
  with TEST2 do
  begin
      //close;
      sql.Clear;

      sql.Add(' select * from "TEST" ');
      sql.Add(' where ID = :id           ');
      ParamByName('id' ).AsString := edit1.Text;
      open;

       if TEST2.FieldByName('ID').AsString = edit1.Text then

      begin
          IF (TEST2.fIELDbYnAME('pw').aSsTRING = EDIT2.tEXT) THEN
          BEGIN
              SHOWMESSAGE('�ȳ��ϼ���');
             // unit6.Form6.Show;
          END
          ELSE
          begin
              SHOWMESSAGE('�н����尡 Ʋ�Ƚ��ϴ�');
              EDIT2.sETfOCUS;
          end;
      end
      else
      begin
          showmessage('���� ���̵��Դϴ�.');
          edit1.SetFocus;
      end;
   end;
end;
end.
