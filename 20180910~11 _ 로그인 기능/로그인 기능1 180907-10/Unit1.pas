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
    showmessage('아이디를 입력하여 주세요');
    edit1.SetFocus;
    exit;
  end;
  if edit2.Text='' then begin
    showmessage('패스워드를 입력하여 주세요');
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
              SHOWMESSAGE('안녕하세요');
             // unit6.Form6.Show;
          END
          ELSE
          begin
              SHOWMESSAGE('패스워드가 틀렸습니다');
              EDIT2.sETfOCUS;
          end;
      end
      else
      begin
          showmessage('없는 아이디입니다.');
          edit1.SetFocus;
      end;
   end;
end;
end.
