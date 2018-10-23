unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,  ClientModuleUnit1,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
  ClientModule1.PERSONNEL.Post;
  ClientModule1.PERSONNEL.ApplyUpdates(-1);
  form3.Hide;
  form1.Show;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

end.
