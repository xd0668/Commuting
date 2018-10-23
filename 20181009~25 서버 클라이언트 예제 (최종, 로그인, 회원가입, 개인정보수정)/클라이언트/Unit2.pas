unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, ClientModuleUnit1,
  Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit4,  Unit1, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
var
   a : String;
begin
a :=  form1.Edit1.Text;


   with ClientModule1  do
    begin

      SQLQuery1.close;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from PERSONNEL where ID = ''' + a + '''');
      SQLQuery1.Open;
      ClientDataSet1.Close;
      ClientDataSet1.Active := True;
    end;


  form4.Show;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
